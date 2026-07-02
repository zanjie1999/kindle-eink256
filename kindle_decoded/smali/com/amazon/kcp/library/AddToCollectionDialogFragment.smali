.class public Lcom/amazon/kcp/library/AddToCollectionDialogFragment;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "AddToCollectionDialogFragment.java"


# static fields
.field private static final ADD_TO_COLLECTION_DIALOG_ENTRY_POINT:Ljava/lang/String; = "AddToCollectionDialog"

.field private static final BOOK_IDS_KEY:Ljava/lang/String; = "BookIds"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private collectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation
.end field

.field private collectionName:Landroid/widget/EditText;

.field private collectionNameWatcher:Landroid/text/TextWatcher;

.field private createCollectionButton:Landroid/view/View;

.field private dialog:Landroid/app/AlertDialog;

.field private list:Landroid/widget/ListView;

.field private listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneticSpelling:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$1;-><init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->createCollectionButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->updateCollectionMembership()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->bookIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;Ljava/util/List;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->reportAddToCollectionActionMetrics(Ljava/util/List;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->updatePositiveButtonStatus()V

    return-void
.end method

.method private addCheckedCollectionItemForAddition(ZLcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p5, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 329
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->addCollectionItemsForFutureUpdate(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private addCollectionItemsForFutureUpdate(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;>;)V"
        }
    .end annotation

    .line 334
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/amazon/kindle/collections/CollectionsManager;->generateCollectionItem(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 343
    sget-object p4, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error adding item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to collection "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addUncheckedCollectionItemForRemove(ZLcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 312
    invoke-interface {p5, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->addCollectionItemsForFutureUpdate(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private createCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 5

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 257
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "LibraryActivity"

    const-string v4, "CollectionCreatedViaContextMenu"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 258
    invoke-static {}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getInstance()Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    const-string v3, ""

    invoke-direct {v2, p1, v3, v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2, p2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setTitlePronunciation(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->updateSortableTitle(Lcom/amazon/kindle/utils/ISortFriendlyFormatter;)V

    .line 262
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method private getCollectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getCollectionTitles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 180
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/AddToCollectionDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kcp/library/AddToCollectionDialogFragment;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->getContentIds(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v2, "BookIds"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private reloadListForNewCollection(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    .line 220
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 221
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 223
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 224
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v4}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->getCollectionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 232
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->getCollectionTitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 239
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 242
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 247
    :cond_3
    iget-object v4, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 248
    iget-object v4, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 250
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->updatePositiveButtonStatus()V

    :cond_5
    return-void
.end method

.method private reportAddToCollectionActionMetrics(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 400
    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->getAsinListStringFromBookIdList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ASINS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollectionsAddedTo"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollectionsRemovedFrom"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->getCurrentLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    .line 405
    sget-object p2, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$7;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 414
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LibraryView"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Library"

    goto :goto_0

    :cond_0
    const-string p1, "CollectionDetails"

    goto :goto_0

    :cond_1
    const-string p1, "Home"

    .line 416
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 418
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string p3, "AddToCollection"

    invoke-interface {p2, p1, p3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private setSelectedCollections()V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->bookIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsByBookId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_2

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 383
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    return-void

    .line 390
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 391
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 393
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private updateCollectionItemsIfNeeded(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;>;)V"
        }
    .end annotation

    .line 353
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 354
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->addItemsToCollection(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_0

    .line 357
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 358
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kindle/collections/ICollectionsManager;->removeCollectionItems(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateCollectionMembership()V
    .locals 18

    move-object/from16 v7, p0

    .line 271
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 272
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 273
    iget-object v0, v7, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 275
    iget-object v0, v7, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->bookIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v12

    .line 279
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionItemsByBookId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 280
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 282
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v14, 0x0

    .line 287
    :goto_1
    iget-object v0, v7, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_0

    .line 288
    invoke-virtual {v10, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 289
    iget-object v0, v7, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 290
    invoke-interface/range {v16 .. v16}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v13

    move-object v6, v9

    .line 292
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->addUncheckedCollectionItemForRemove(ZLcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object v6, v8

    .line 293
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->addCheckedCollectionItemForAddition(ZLcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 297
    :cond_2
    invoke-direct {v7, v8, v9}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->updateCollectionItemsIfNeeded(Ljava/util/Map;Ljava/util/Map;)V

    .line 298
    iget-object v0, v7, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->bookIds:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v7, v0, v1, v2}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->reportAddToCollectionActionMetrics(Ljava/util/List;II)V

    return-void
.end method

.method private updatePositiveButtonStatus()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method handleCollectionCreation()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/LibraryUtils;->deduplicateCollectionName(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/util/PronounceableName;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/amazon/kindle/collections/util/PronounceableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/util/PronounceableName;->getPronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->createCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->reloadListForNewCollection(Lcom/amazon/kindle/collections/dto/ICollection;)V

    if-eqz v0, :cond_1

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CollectionID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EntryPoint"

    const-string v2, "AddToCollectionDialog"

    .line 203
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "Collections"

    const-string v3, "CreateCollection"

    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->add_to_collection:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    sget v2, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_dialog_add_to_collection:I

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->collection_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    .line 100
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->phonetic_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    .line 101
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->create_collection:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->createCollectionButton:Landroid/view/View;

    .line 103
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    iget-object v4, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 105
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->collections_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    const/4 v4, 0x2

    .line 106
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 108
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->getCollectionList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->collectionList:Ljava/util/List;

    .line 110
    sget v3, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_add_to_collection_screen_item:I

    .line 111
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->getCollectionTitles()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->listAdapter:Landroid/widget/ArrayAdapter;

    .line 112
    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "BookIds"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->bookIds:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->setSelectedCollections()V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->createCollectionButton:Landroid/view/View;

    new-instance v3, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$2;-><init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowPhoneticEntry()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 130
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 131
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$3;-><init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$4;-><init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->dialog:Landroid/app/AlertDialog;

    .line 146
    new-instance v0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$5;-><init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 153
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->list:Landroid/widget/ListView;

    new-instance v0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$6;-><init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method
