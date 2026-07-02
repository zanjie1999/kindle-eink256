.class public Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;
.super Ljava/lang/Object;
.source "SeriesLibraryDisplayItemsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final serializedGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;->serializedGroupId:Ljava/lang/String;

    return-void
.end method

.method private getLastOwnedItemMetadata(Ljava/util/List;)Lcom/amazon/kindle/content/GroupItemMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;)",
            "Lcom/amazon/kindle/content/GroupItemMetadata;"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 71
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 73
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result v0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private isSeriesUpsellFeatureEnabled()Z
    .locals 3

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesUpsellDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesGroupingAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesUpsellToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v2}, Lcom/amazon/kcp/library/SeriesUpsellWeblab;->isWeblabEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;->get(Ljava/lang/Void;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Void;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;->serializedGroupId:Ljava/lang/String;

    .line 35
    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;->getLastOwnedItemMetadata(Ljava/util/List;)Lcom/amazon/kindle/content/GroupItemMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 43
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v4

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 49
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;->isSeriesUpsellFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v1, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;

    .line 53
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method
