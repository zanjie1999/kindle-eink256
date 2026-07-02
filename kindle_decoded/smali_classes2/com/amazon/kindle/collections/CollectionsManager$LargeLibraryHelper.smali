.class Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;
.super Ljava/lang/Object;
.source "CollectionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/CollectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LargeLibraryHelper"
.end annotation


# instance fields
.field private final largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    iput-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->addCollection(Lcom/amazon/kindle/collections/dto/ICollection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/lang/String;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->removeCollection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->reorderCollectionItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->renameCollection(Lcom/amazon/kindle/collections/dto/ICollection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->addCollectionItemsToCollection(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->addCollectionItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->addCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->removeCollectionItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->reorderCollectionItemsWithNewItem(Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    return-void
.end method

.method private addCollection(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-nez v0, :cond_0

    return-void

    .line 1098
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleCollectionAdded(Ljava/lang/String;)V

    return-void
.end method

.method private addCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 4

    .line 1138
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-nez v0, :cond_0

    return-void

    .line 1139
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1140
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1141
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method private addCollectionItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1130
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 1132
    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private addCollectionItemsToCollection(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1121
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1122
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 1123
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1125
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-interface {p1, v0, p2}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private removeCollection(Ljava/lang/String;)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-nez v0, :cond_0

    return-void

    .line 1103
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleCollectionRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 4

    .line 1154
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-nez v0, :cond_0

    return-void

    .line 1155
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1156
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1157
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksRemovedFromCollection(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method private removeCollectionItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1146
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 1148
    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksRemovedFromCollection(Ljava/util/Set;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private renameCollection(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-nez v0, :cond_0

    return-void

    .line 1108
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleCollectionNameChanged(Ljava/lang/String;)V

    return-void
.end method

.method private reorderCollectionItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1172
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 1174
    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1176
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksOrderingChangedInCollection(Ljava/util/Set;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private reorderCollectionItemsWithNewItem(Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ")V"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-nez v0, :cond_0

    return-void

    .line 1162
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 1164
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_1
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1167
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-interface {p2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksOrderingChangedInCollection(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
