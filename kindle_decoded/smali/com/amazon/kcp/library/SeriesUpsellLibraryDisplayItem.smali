.class Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "SeriesUpsellLibraryDisplayItem.java"


# static fields
.field private static final LAST_OWNED_SERIES_ITEM_ASIN_EXTRA:Ljava/lang/String; = "lastOwnedSeriesItemAsinExtra"

.field private static final SERIES_ASIN_EXTRA:Ljava/lang/String; = "seriesAsinExtra"

.field private static final SERIES_TITLE_EXTRA:Ljava/lang/String; = "seriesTitleExtra"

.field private static final TAG:Ljava/lang/String;

.field private static final UPSELL_ACTIVITY_NAME:Ljava/lang/String; = "com.amazon.kindle.libraryupsell.LibraryUpsellActivity"


# instance fields
.field private final bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private final lastOwnedSeriesItemAsin:Ljava/lang/String;

.field private final seriesAsin:Ljava/lang/String;

.field private final seriesTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->seriesAsin:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->seriesTitle:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->lastOwnedSeriesItemAsin:Ljava/lang/String;

    .line 50
    new-instance p2, Lcom/amazon/kindle/model/content/UpsellBookID;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/model/content/UpsellBookID;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method

.method private hasNetworkConnectivity()Z
    .locals 1

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    return v0
.end method

.method private launchUpsellActivity()V
    .locals 4

    .line 108
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.libraryupsell.LibraryUpsellActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "seriesAsinExtra"

    .line 110
    iget-object v3, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->seriesAsin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "seriesTitleExtra"

    .line 111
    iget-object v3, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->seriesTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "lastOwnedSeriesItemAsinExtra"

    .line 112
    iget-object v3, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->lastOwnedSeriesItemAsin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->seriesAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->seriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public handleClick()Z
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ConnectionError"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/SeriesUpsellLibraryDisplayItem;->launchUpsellActivity()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
