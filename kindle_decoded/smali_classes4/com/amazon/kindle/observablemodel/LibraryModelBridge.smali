.class public Lcom/amazon/kindle/observablemodel/LibraryModelBridge;
.super Lcom/amazon/kindle/observablemodel/LibraryModel;
.source "LibraryModelBridge.java"


# static fields
.field public static final STRING_COMPARE_MODE_DEFAULT:I = 0x0

.field public static final STRING_COMPARE_MODE_NATURAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LibraryModelBridge"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryModel;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->createNativePointer(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->mNativePtr:J

    return-void
.end method

.method public static native configureDebugging()Z
.end method

.method private native containerIDForCountOptionArrays([I[Ljava/lang/String;[IILjava/lang/String;[I[I[I[I[I[I[I[ILjava/lang/String;)Lcom/amazon/kindle/observablemodel/ContainerID;
.end method

.method private native containerIDForGroupOptionArrays([I[Ljava/lang/String;[IILjava/lang/String;[I[I[I[I[I[I[I[I[I[ILjava/lang/String;)Lcom/amazon/kindle/observablemodel/ContainerID;
.end method

.method private native containerIDForPresentationOptionArrays([I[Ljava/lang/String;[IILjava/lang/String;[I[I[I[I[I[I[I[I[I[ILjava/lang/String;Z)Lcom/amazon/kindle/observablemodel/ContainerID;
.end method

.method private native createNativePointer(Ljava/lang/String;)J
.end method

.method private native destroyNativePointer(J)V
.end method

.method static native getLeafNameForAccountType(I)Ljava/lang/String;
.end method

.method static native getLeafNameForAudibleCompanionDictionary()Ljava/lang/String;
.end method

.method static native getLeafNameForCarouselSet()Ljava/lang/String;
.end method

.method static native getLeafNameForCategory(I)Ljava/lang/String;
.end method

.method static native getLeafNameForCollectionSet()Ljava/lang/String;
.end method

.method static native getLeafNameForFalkorDictionary()Ljava/lang/String;
.end method

.method static native getLeafNameForGroup(I)Ljava/lang/String;
.end method

.method static native getLeafNameForOwnership(I)Ljava/lang/String;
.end method

.method static native getLeafNameForRawAuthorDictionary()Ljava/lang/String;
.end method

.method static getLeafNameForRawDictionary(Lcom/amazon/kindle/observablemodel/RawDictionaryType;)Ljava/lang/String;
    .locals 2

    .line 259
    sget-object v0, Lcom/amazon/kindle/observablemodel/LibraryModelBridge$1;->$SwitchMap$com$amazon$kindle$observablemodel$RawDictionaryType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown enum used for RawDictionaryType. Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Falling back to title dictionary."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForRawTitleDictionary()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForRawAuthorDictionary()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForRawTitleDictionary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static native getLeafNameForRawTitleDictionary()Ljava/lang/String;
.end method

.method static native getLeafNameForReadingProgress(I)Ljava/lang/String;
.end method

.method static native getLeafNameForSampleSet()Ljava/lang/String;
.end method

.method static native getLeafNameForSeriesToNarrative()Ljava/lang/String;
.end method

.method static native getLeafNameForSortCollation(I)Ljava/lang/String;
.end method

.method static native getLeafNameForSortType(I)Ljava/lang/String;
.end method

.method public static native setStringCompareMode(I)V
.end method


# virtual methods
.method public addCollectionItemsInLeafDictionary(Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    .line 422
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 423
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    .line 425
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setCollectionItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addItemDatesInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 350
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 351
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 352
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v3

    if-nez v3, :cond_0

    .line 358
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v6

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setItemDateInLeafDictionary(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_0

    .line 355
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "does not support items with parents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public addItemIntegersInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 376
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 377
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 378
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 381
    move-object v3, v1

    check-cast v3, Lcom/amazon/kindle/observablemodel/CollectionItemID;

    .line 382
    invoke-virtual {v3}, Lcom/amazon/kindle/observablemodel/CollectionItemID;->getCollectionID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v3

    .line 384
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v6

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setCollectionItemIntInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setItemIntInLeafDictionary(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    .line 393
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 394
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 395
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v3

    if-nez v3, :cond_0

    .line 401
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v6

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v8

    invoke-virtual {v2}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "does not support items with parents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 364
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v3

    if-nez v3, :cond_0

    .line 371
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setItemStringInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "does not support items with parents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method native addItemsToLeafSet(Ljava/lang/String;I[Ljava/lang/String;I)V
.end method

.method public addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x3e8

    new-array v1, v0, [Ljava/lang/String;

    .line 293
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 294
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v6

    if-nez v6, :cond_3

    if-nez v3, :cond_1

    .line 301
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v4

    .line 302
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 304
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 305
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {p0, p1, v4, v1, v3}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->addItemsToLeafSet(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 309
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v4

    .line 310
    invoke-virtual {v5}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    :goto_2
    if-ne v3, v0, :cond_0

    .line 315
    invoke-virtual {p0, p1, v4, v1, v3}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->addItemsToLeafSet(Ljava/lang/String;I[Ljava/lang/String;I)V

    const/4 v3, 0x0

    goto :goto_0

    .line 297
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "does not support items with parents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-lez v3, :cond_5

    .line 321
    invoke-virtual {p0, p1, v4, v1, v3}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->addItemsToLeafSet(Ljava/lang/String;I[Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method arrayOfItemsFromArrayOfPairs(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ModelSortingPair;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 103
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;->getOrder()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;->getDirection()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method native changeUpdateForCurrentValue(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;
.end method

.method public containerIDForCountOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ContainerID;
    .locals 16

    move-object/from16 v15, p0

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    .line 148
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v5, v1

    const/4 v4, 0x0

    .line 151
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getCategorySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v1

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getIntersectingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->stringArrayFromCollection(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getGroupingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v3

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getOwnershipSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v6

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getReadingProgressSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v7

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getSampleMembershipSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v8

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getAudibleCompanionSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v9

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getBindingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v10

    .line 161
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getLocationSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v11

    .line 162
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getAccountType()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v12

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getCarouselSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v13

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getInlineFilterLeafName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    .line 151
    invoke-direct/range {v0 .. v14}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->containerIDForCountOptionArrays([I[Ljava/lang/String;[IILjava/lang/String;[I[I[I[I[I[I[I[ILjava/lang/String;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object v0

    return-object v0
.end method

.method public containerIDForGroupOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;
    .locals 19

    move-object/from16 v5, p0

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    .line 174
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move/from16 v17, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v18, v0

    const/16 v17, 0x0

    .line 177
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getCategorySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v1

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getIntersectingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->stringArrayFromCollection(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getGroupingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v3

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getOwnershipSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v6

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getReadingProgressSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v7

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getSampleMembershipSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v8

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getAudibleCompanionSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v9

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getBindingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v10

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getLocationSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v11

    .line 188
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/observablemodel/ModelSorting;->getOrder()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x1

    invoke-virtual {v5, v0, v12}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->arrayOfItemsFromArrayOfPairs(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v12

    .line 189
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/observablemodel/ModelSorting;->getOrder()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->arrayOfItemsFromArrayOfPairs(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v13

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getAccountType()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v14

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getCarouselSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v15

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getInlineFilterLeafName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 v5, v18

    .line 177
    invoke-direct/range {v0 .. v16}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->containerIDForGroupOptionArrays([I[Ljava/lang/String;[IILjava/lang/String;[I[I[I[I[I[I[I[I[I[ILjava/lang/String;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object v0

    return-object v0
.end method

.method public containerIDForPresentationOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;
    .locals 20

    move-object/from16 v5, p0

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    .line 119
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    move/from16 v18, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v19, v0

    const/16 v18, 0x0

    .line 122
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getCategorySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v1

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getIntersectingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->stringArrayFromCollection(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getGroupingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v3

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getOwnershipSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v6

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getReadingProgressSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v7

    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getSampleMembershipSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v8

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getAudibleCompanionSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v9

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getBindingSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v10

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getLocationSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v11

    .line 133
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/observablemodel/ModelSorting;->getOrder()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x1

    invoke-virtual {v5, v0, v12}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->arrayOfItemsFromArrayOfPairs(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v12

    .line 134
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/observablemodel/ModelSorting;->getOrder()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->arrayOfItemsFromArrayOfPairs(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v13

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getAccountType()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v14

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getCarouselSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->intArrayFromCollection(Ljava/util/Collection;)[I

    move-result-object v15

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getInlineFilterLeafName()Ljava/lang/String;

    move-result-object v16

    .line 138
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/observablemodel/ModelSorting;->getEnableSection()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v4, v18

    move-object/from16 v5, v19

    .line 122
    invoke-direct/range {v0 .. v17}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->containerIDForPresentationOptionArrays([I[Ljava/lang/String;[IILjava/lang/String;[I[I[I[I[I[I[I[I[I[ILjava/lang/String;Z)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object v0

    return-object v0
.end method

.method countCurrentForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
    .locals 5

    .line 207
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->countForCurrentValue(Lcom/amazon/kindle/observablemodel/ContainerID;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;-><init>(Lcom/amazon/kindle/observablemodel/ContainerID;J)V

    return-object v2
.end method

.method native countForCurrentValue(Lcom/amazon/kindle/observablemodel/ContainerID;)J
.end method

.method native countForUpdateValue(Lcom/amazon/kindle/observablemodel/ContainerID;)J
.end method

.method countUpdateForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
    .locals 5

    .line 216
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->countForUpdateValue(Lcom/amazon/kindle/observablemodel/ContainerID;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;-><init>(Lcom/amazon/kindle/observablemodel/ContainerID;J)V

    return-object v2
.end method

.method native createLeafDictionary(Ljava/lang/String;)V
.end method

.method native createLeafSet(Ljava/lang/String;)V
.end method

.method native emptyLeaves()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native eraseLeafDictionary(Ljava/lang/String;)V
.end method

.method native eraseLeafSet(Ljava/lang/String;)V
.end method

.method protected finalize()V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->destroyNativePointer(J)V

    return-void
.end method

.method native getChangeUpdateForContainerAndReset(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;
.end method

.method native getContainersWithChangeUpdate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            ">;"
        }
    .end annotation
.end method

.method native groupCurrentForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;
.end method

.method native groupUpdateForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;
.end method

.method intArrayFromCollection(Ljava/util/Collection;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method native neededAccountTypes(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method native neededGroupingLeaves(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native neededItemCategories(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method native neededOwnership(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method native neededReadingProgress(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method native neededSortType(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method native releaseContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)V
.end method

.method native removeCollectionItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public removeCollectionItemsInLeafDictionary(Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    .line 430
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 431
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    .line 433
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->removeCollectionItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method native removeItemFromLeafDictionary(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method native removeItemFromLeafSet(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public removeItemsFromLeafDictionary(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 407
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/observablemodel/CollectionItemID;

    .line 411
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/CollectionItemID;->getCollectionID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    .line 413
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->removeCollectionItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->removeItemFromLeafDictionary(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 327
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getParentID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    if-nez v1, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->removeItemFromLeafSet(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "does not support items with parents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method resetFilterText(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setFilterText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method native setCollectionItemIntInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method native setCollectionItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method native setFilterText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native setItemDateInLeafDictionary(Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method native setItemIntInLeafDictionary(Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method native setItemItemInLeafDictionary(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
.end method

.method native setItemStringInLeafDictionary(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method stringArrayFromCollection(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method
