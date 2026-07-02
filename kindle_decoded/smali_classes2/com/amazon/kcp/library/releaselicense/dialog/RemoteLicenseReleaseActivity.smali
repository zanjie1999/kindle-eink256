.class public final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "RemoteLicenseReleaseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteLicenseReleaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteLicenseReleaseActivity.kt\ncom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,709:1\n1819#2,2:710\n734#2:712\n825#2,2:713\n734#2:715\n825#2,2:716\n1013#2:718\n1517#2:719\n1588#2,3:720\n*E\n*S KotlinDebug\n*F\n+ 1 RemoteLicenseReleaseActivity.kt\ncom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity\n*L\n249#1,2:710\n417#1:712\n417#1,2:713\n428#1:715\n428#1,2:716\n444#1:718\n445#1:719\n445#1,3:720\n*E\n"
.end annotation


# static fields
.field private static final BOOK_ID_DATA_KEY:Ljava/lang/String; = "BookIdDataKey"

.field public static final Companion:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;

.field private static final DEFAULT_ASIN:Ljava/lang/String; = "DefaultASIN"

.field private static final DEVICE_TYPE_IOS:Ljava/lang/String; = "IOS"

.field private static final DEVICE_TYPE_KCR:Ljava/lang/String; = "KCR"

.field private static final DEVICE_TYPE_KFA:Ljava/lang/String; = "Android"

.field private static final DEVICE_TYPE_KFA_FOS_TABLET:Ljava/lang/String; = "Android Tablet"

.field private static final DEVICE_TYPE_KFC:Ljava/lang/String; = "Kindle for China"

.field private static final DEVICE_TYPE_KFC_TABLET:Ljava/lang/String; = "Kindle for China Tablet"

.field private static final DEVICE_TYPE_KFS:Ljava/lang/String; = "Kindle For Samsung"

.field private static final DEVICE_TYPE_KFS_TABLET:Ljava/lang/String; = "Kindle for Samsung Tablet"

.field private static final DOWNLOADED_DATE_DELIMITER:Ljava/lang/String; = ":"

.field public static final ENTRY_POINT_IDENTIFIER_RLR:Ljava/lang/String; = "RemoteLicenseRelease"

.field private static final IS_ONE_TAP_ENABLED:Ljava/lang/String; = "IsOneTapEnabled"

.field private static final IS_STARTED_FROM_STORE_OR_SEARCH:Ljava/lang/String; = "IsFromStoreOrSearch"

.field private static final LIST_DATE_SUBTITLE:Ljava/lang/String; = "listDateSubtitle"

.field private static final LIST_DEVICE_ID:Ljava/lang/String; = "listDeviceID"

.field private static final LIST_DEVICE_NAME:Ljava/lang/String; = "listDeviceName"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private asin:Ljava/lang/String;

.field private contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private deviceTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private ineligibleDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public ineligibleList:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

.field private ineligibleListAdapter:Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

.field private isRLRActivityForegrounded:Z

.field private isRemoveConsumptionsRequestSubmitted:Z

.field private isStoreOrSearch:Z

.field private libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

.field public list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

.field private listAdapter:Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

.field private selectedDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedDeviceTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->Companion:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const-string v0, "DefaultASIN"

    .line 79
    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->asin:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleDeviceList:Ljava/util/List;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isRLRActivityForegrounded:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceTypeSet:Ljava/util/HashSet;

    const-string v1, "IOS"

    const-string v2, "Android"

    const-string v3, "Android Tablet"

    const-string v4, "Kindle For Samsung"

    const-string v5, "Kindle for Samsung Tablet"

    const-string v6, "Kindle for China"

    const-string v7, "Kindle for China Tablet"

    const-string v8, "KCR"

    .line 98
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->supportedDeviceTypes:Ljava/util/Set;

    .line 101
    const-class v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RemoteLicen\u2026easeActivity::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/AmazonDeviceType;->values()[Lcom/amazon/kcp/application/AmazonDeviceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->supportedDeviceTypes:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AmazonDeviceType;->getMykName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceTypeSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-void
.end method

.method public static final synthetic access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->asin:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCancelListener(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getCancelListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kindle/krx/content/ContentType;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0
.end method

.method public static final synthetic access$getDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getFactory$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-object p0
.end method

.method public static final synthetic access$getIneligibleDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleDeviceList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getIneligibleListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleListAdapter:Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "ineligibleListAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->listAdapter:Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "listAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isRLRActivityForegrounded$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isRLRActivityForegrounded:Z

    return p0
.end method

.method public static final synthetic access$isStoreOrSearch$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isStoreOrSearch:Z

    return p0
.end method

.method public static final synthetic access$onFinishByUser(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->onFinishByUser(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->asin:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method

.method public static final synthetic access$setDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setIneligibleDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleDeviceList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setIneligibleListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleListAdapter:Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    return-void
.end method

.method public static final synthetic access$setListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->listAdapter:Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    return-void
.end method

.method public static final synthetic access$setRLRActivityForegrounded$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isRLRActivityForegrounded:Z

    return-void
.end method

.method public static final synthetic access$setStoreOrSearch$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isStoreOrSearch:Z

    return-void
.end method

.method private final deviceListListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 350
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$deviceListListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$deviceListListener$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)V

    return-object v0
.end method

.method public static synthetic executeGetAsinDetailsRequest$LibraryModule_release$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 277
    iget-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p2

    const-string p5, "factory.networkService"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 278
    iget-object p3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p3

    const-string p4, "factory.applicationController"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeGetAsinDetailsRequest$LibraryModule_release(Ljava/lang/String;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    return-void
.end method

.method public static synthetic executeRemoveConsumptionsRequest$LibraryModule_release$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;ZLcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 515
    iget-object p4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p4

    const-string p8, "factory.libraryController"

    invoke-static {p4, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 516
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p5

    const-string p4, "ThreadPoolManager.getInstance()"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 517
    const-class p4, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {p4}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p4

    invoke-virtual {p4}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p4

    move-object p6, p4

    check-cast p6, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeRemoveConsumptionsRequest$LibraryModule_release(Ljava/lang/String;ZLcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;)V

    return-void
.end method

.method private final getAlertDialogCancelListener(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 666
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getAlertDialogCancelListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getAlertDialogCancelListener$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCancelListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 671
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getIneligibleList$LibraryModule_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLibraryRightsClientAPI$LibraryModule_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getList$LibraryModule_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSelectedDeviceList$LibraryModule_release$annotations()V
    .locals 0

    return-void
.end method

.method private final isListWidthLimited()Z
    .locals 2

    .line 707
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->ruby_library_list_view_size_limited:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private final onFinishByUser(Ljava/lang/String;)V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by user and dismiss activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 692
    sget p1, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private final readNowButtonListener(Ljava/lang/String;ZLcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;)Landroid/view/View$OnClickListener;
    .locals 7

    .line 485
    new-instance v6, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;Ljava/lang/String;Z)V

    return-object v6
.end method

.method static synthetic readNowButtonListener$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;ZLcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;ILjava/lang/Object;)Landroid/view/View$OnClickListener;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 483
    iget-object p3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p3

    const-string p6, "factory.networkService"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 484
    iget-object p4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p4

    const-string p5, "factory.applicationController"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->readNowButtonListener(Ljava/lang/String;ZLcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method private final retryWebRequestListener(Ljava/lang/String;ZZ)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 696
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method private final setCoverImageAndTitle(Ljava/lang/String;)V
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 710
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    .line 250
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rlr_book_cover:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 251
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v2

    const-string v3, "cover"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/ui/Cover;->setGravity(I)V

    .line 252
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    const-string v2, "it"

    .line 253
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverSource(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    const/4 v2, 0x0

    .line 254
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_error_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "this"

    .line 259
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setLayoutFontFamily()V
    .locals 7

    .line 165
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rlr_devicelist_progress_bar_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_error_title:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_error_subtitle:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 169
    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_devices_description:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    iget-object v5, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v5

    const-string v6, "screenHeader"

    .line 172
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v5, v6}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "errorTitle"

    .line 173
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v5, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "errorSubTitle"

    .line 174
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v5, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "ineligibleDescription"

    .line 175
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v5, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "deviceListLoadingText"

    .line 176
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v5, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private final setupDeviceList(Ljava/lang/String;)V
    .locals 10

    .line 266
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_device_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<NonScrollLi\u2026ew>(R.id.rlr_device_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    const-string v1, "list"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 269
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_device_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "findViewById<NonScrollLi\u2026r_ineligible_device_list)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleList:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 271
    invoke-static/range {v4 .. v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeGetAsinDetailsRequest$LibraryModule_release$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;ILjava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceListListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "ineligibleList"

    .line 270
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final setupLayoutForWidth()V
    .locals 9

    .line 184
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->rlr_layout_body_width_limited_left_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 185
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->rlr_bottom_bar_button_width_limited_left_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 186
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_error_title:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "errorTitle"

    .line 187
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v2, :cond_6

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    .line 190
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 191
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v0

    .line 192
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 188
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 194
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_error_subtitle:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "errorSubTitle"

    .line 195
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    .line 198
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 199
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v0

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/amazon/kindle/librarymodule/R$dimen;->rlr_error_subtitle_width_limited_bottom_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 196
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 202
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_device_list:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    const-string v4, "eligibleDevicesList"

    .line 203
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 205
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    .line 206
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 207
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v0

    .line 208
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 204
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 210
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_devices_description:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "ineligibleText"

    .line 211
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    .line 214
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 215
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v0

    .line 216
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 212
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 218
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_device_list:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    const-string v4, "ineligibleDevicesList"

    .line 219
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    .line 222
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 223
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v0

    .line 224
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 220
    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 226
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_remove_and_read_now_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "removeButton"

    .line 227
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 232
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 228
    invoke-virtual {v0, v1, v2, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 234
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ok_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "okButton"

    .line 235
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 238
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 240
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 236
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setupTopbar(Ljava/lang/String;)V
    .locals 1

    .line 244
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 245
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getCancelListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    invoke-static {p0}, Lcom/amazon/kindle/utils/KindleDialogUtils;->getAlertDialogBuilder(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 648
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->alertDialogErrorIcon:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 649
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 650
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 652
    invoke-virtual {v0, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p6, :cond_0

    .line 655
    invoke-virtual {v0, p5, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 658
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    const-string p2, "RLR Response Failure dialog shown"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$buildDialog$1;

    invoke-direct {p2, v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$buildDialog$1;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkFailureAndBuildDialog$LibraryModule_release(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 10

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this.getString(R.string.ok)"

    const-string v1, "this.getString(R.string.\u2026rror_generic_description)"

    const-string v2, "this.getString(R.string.rlr_error_dialog_title)"

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 609
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4d188144

    if-eq v3, v4, :cond_4

    const v4, -0x495427

    if-eq v3, v4, :cond_3

    const v4, 0x463fa1ec

    if-eq v3, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v3, "SERVER_ERROR"

    .line 621
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "this.getString(R.string.try_again)"

    if-eqz p4, :cond_2

    .line 623
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_load_devices_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "this.getString(R.string.\u2026oad_devices_dialog_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_load_devices_dialog_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "this.getString(R.string.\u2026vices_dialog_description)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->try_again:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->retryWebRequestListener(Ljava/lang/String;ZZ)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    .line 626
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getAlertDialogCancelListener(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v1, p0

    .line 623
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 628
    :cond_2
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_generic_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->try_again:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->retryWebRequestListener(Ljava/lang/String;ZZ)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    .line 631
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getAlertDialogCancelListener(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    move-object v3, p0

    .line 628
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :cond_3
    const-string p2, "FORBIDDEN"

    .line 614
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 615
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget p3, Lcom/amazon/kindle/librarymodule/R$string;->rlr_forbidden_error_dialog_description:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "this.getString(R.string.\u2026error_dialog_description)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 617
    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->rlr_forbidden_redirect_link:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 616
    invoke-static {v1, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "java.lang.String.format(format, *args)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    sget p3, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_dialog_title:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p2, "strBuilder.toString()"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getAlertDialogCancelListener(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 618
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_4
    const-string p2, "TIME_OUT"

    .line 610
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 611
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_timeout_error_dialog_title:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "this.getString(R.string.\u2026meout_error_dialog_title)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_generic_description:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getAlertDialogCancelListener(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 611
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 634
    :cond_5
    :goto_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_dialog_title:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_error_generic_description:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getAlertDialogCancelListener(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 634
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->buildDialog$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public final convertAsinDownloadTimeToText$LibraryModule_release(J)Ljava/lang/String;
    .locals 4

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_start_string:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "Calendar.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 463
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p1

    long-to-int p2, p1

    if-nez p2, :cond_0

    .line 466
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_today:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 467
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_yesterday:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_1
    const/16 p1, 0x1e

    const/4 v2, 0x2

    if-le v2, p2, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    .line 468
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_days:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_3
    :goto_0
    const/16 p1, 0x3c

    const/16 v2, 0x1f

    if-le v2, p2, :cond_4

    goto :goto_1

    :cond_4
    if-lt p1, p2, :cond_5

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_5
    :goto_1
    const/16 p1, 0x5a

    const/16 v2, 0x3d

    if-le v2, p2, :cond_6

    goto :goto_2

    :cond_6
    if-lt p1, p2, :cond_7

    .line 470
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_2month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_months:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_7
    :goto_2
    const/16 p1, 0x78

    const/16 v2, 0x5b

    if-le v2, p2, :cond_8

    goto :goto_3

    :cond_8
    if-lt p1, p2, :cond_9

    .line 471
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_3month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_months:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_9
    :goto_3
    const/16 p1, 0x96

    const/16 v2, 0x79

    if-le v2, p2, :cond_a

    goto :goto_4

    :cond_a
    if-lt p1, p2, :cond_b

    .line 472
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_4month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_months:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_b
    :goto_4
    const/16 p1, 0xb4

    const/16 v2, 0x97

    if-le v2, p2, :cond_c

    goto :goto_5

    :cond_c
    if-lt p1, p2, :cond_d

    .line 473
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_5month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_months:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_d
    :goto_5
    const/16 p1, 0xd2

    const/16 v2, 0xb5

    if-le v2, p2, :cond_e

    goto :goto_6

    :cond_e
    if-lt p1, p2, :cond_f

    .line 474
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_6month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_months:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    :goto_6
    const/16 p1, 0xd3

    const/16 v2, 0x16d

    if-le p1, p2, :cond_10

    goto :goto_7

    :cond_10
    if-lt v2, p2, :cond_11

    .line 475
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_6plus_month:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_months:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    :goto_7
    const p1, 0x7fffffff

    if-le v2, p2, :cond_12

    goto :goto_8

    :cond_12
    if-lt p1, p2, :cond_13

    .line 476
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_year_plus:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 477
    :cond_13
    :goto_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->rlr_download_time_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resultString.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final executeGetAsinDetailsRequest$LibraryModule_release(Ljava/lang/String;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 9

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_spinner:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 280
    sget v7, Lcom/amazon/kindle/librarymodule/R$layout;->remote_license_release_screen_item:I

    .line 281
    sget v8, Lcom/amazon/kindle/librarymodule/R$layout;->remote_license_release_ineligible_screen_item:I

    const-string v0, "progressBar"

    .line 282
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    invoke-interface {p2}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "ConnectionError"

    .line 285
    invoke-interface {p3, p2, p1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->LIST_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    iget-object p3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {p2, p3, v0}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceRequestMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 290
    iget-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "List Devices request sent for book "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    .line 292
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getListDevicesCallBack$LibraryModule_release(Ljava/lang/String;JLandroid/widget/LinearLayout;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;II)Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

    move-result-object p3

    .line 291
    invoke-interface {p2, p1, p3}, Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;->getDeviceConsumptionsAsync(Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V

    return-void
.end method

.method public final executeRemoveConsumptionsRequest$LibraryModule_release(Ljava/lang/String;ZLcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v0, "bookId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryController"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;->REMOVE_AND_READ_NOW:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;

    iget-object v1, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v2, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 519
    iget-object v3, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 518
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportActionMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;Lcom/amazon/kindle/krx/content/ContentType;II)V

    .line 520
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->REMOVE_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    iget-object v1, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->asin:Ljava/lang/String;

    iget-object v2, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceRequestMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V

    const/4 v0, 0x1

    .line 521
    iput-boolean v0, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isRemoveConsumptionsRequestSubmitted:Z

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 523
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_remove_consumptions_progress:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ProgressBar;

    const-string v0, "removeProgress"

    .line 524
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 525
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 526
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 527
    new-instance v14, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;

    invoke-direct {v14, v4, v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;-><init>(Landroid/widget/ProgressBar;Lkotlin/jvm/internal/Ref$IntRef;)V

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x3e8

    move-object v13, v3

    invoke-virtual/range {v13 .. v18}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 535
    iget-object v0, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveAndReadNow request sent for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v13, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    iget-object v14, v11, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getRemoveConsumptionsCallBack$LibraryModule_release(Ljava/lang/String;ZLjava/util/Timer;Landroid/widget/ProgressBar;JLcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

    move-result-object v0

    invoke-interface {v13, v12, v14, v0}, Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;->removeConsumptions(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V

    return-void
.end method

.method public final fetchSupportedDevices$LibraryModule_release(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;

    .line 417
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceTypeSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final fetchUnSupportedDevices$LibraryModule_release(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;

    .line 428
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceTypeSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getDeviceId(I)Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "listDeviceID"

    .line 406
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 405
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.String> /* = java.util.HashMap<kotlin.String, kotlin.String> */"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "list"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getIneligibleList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleList:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ineligibleList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLibraryRightsClientAPI$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    return-object v0
.end method

.method public final getList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "list"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getListDevicesCallBack$LibraryModule_release(Ljava/lang/String;JLandroid/widget/LinearLayout;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;II)Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;
    .locals 10

    const-string v0, "bookId"

    move-object v8, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p2

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;JLandroid/widget/LinearLayout;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;ILjava/lang/String;I)V

    return-object v0
.end method

.method public final getListDevicesName$LibraryModule_release(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "deviceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesName$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesName$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 720
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 721
    check-cast v1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    .line 445
    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "listDeviceName"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 446
    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->getAsinDownloadTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->convertAsinDownloadTimeToText$LibraryModule_release(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "listDateSubtitle"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 447
    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "listDeviceID"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v3

    .line 445
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getRemoveConsumptionsCallBack$LibraryModule_release(Ljava/lang/String;ZLjava/util/Timer;Landroid/widget/ProgressBar;JLcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;
    .locals 13

    const-string v0, "bookId"

    move-object v8, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeProgress"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryController"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    move-object v1, v0

    move-object v2, p0

    move-wide/from16 v3, p5

    move v10, p2

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;JLcom/amazon/foundation/internal/IThreadPoolManager;Ljava/util/Timer;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryController;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)V

    return-object v0
.end method

.method public final getSelectedDeviceList$LibraryModule_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 677
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BookIdDataKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 679
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->onFinishByUser(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 141
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "BookIdDataKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "IsOneTapEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 144
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v1, "IsFromStoreOrSearch"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isStoreOrSearch:Z

    if-nez p1, :cond_3

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 148
    :cond_3
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "DefaultASIN"

    :goto_2
    iput-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->asin:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    :goto_3
    iput-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    .line 150
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->remote_license_release_activity:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 151
    invoke-direct {p0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setLayoutFontFamily()V

    .line 152
    invoke-direct {p0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isListWidthLimited()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    invoke-direct {p0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setupLayoutForWidth()V

    .line 155
    :cond_6
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setupTopbar(Ljava/lang/String;)V

    .line 156
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rlr_book_cover:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<BookCoverView>(R.id.rlr_book_cover)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v1

    const-string v2, "findViewById<BookCoverVi\u2026.id.rlr_book_cover).cover"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activity_transition_with_animation"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;->setTransitionListener(Landroid/transition/Transition;)Z

    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setCoverImageAndTitle(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setupDeviceList(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setReadNowButton$LibraryModule_release(Ljava/lang/String;Z)V

    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 589
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isRLRActivityForegrounded:Z

    .line 591
    invoke-virtual {p0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->recordCancelMetricIfNecessary$LibraryModule_release()V

    return-void
.end method

.method public final recordCancelMetricIfNecessary$LibraryModule_release()V
    .locals 4

    .line 597
    iget-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->isRemoveConsumptionsRequestSubmitted:Z

    if-nez v0, :cond_0

    .line 598
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;->CANCEL:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 599
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 598
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportActionMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;Lcom/amazon/kindle/krx/content/ContentType;II)V

    :cond_0
    return-void
.end method

.method public final setIneligibleList$LibraryModule_release(Lcom/amazon/kcp/library/releaselicense/NonScrollListView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->ineligibleList:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    return-void
.end method

.method public final setLibraryRightsClientAPI$LibraryModule_release(Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    return-void
.end method

.method public final setList$LibraryModule_release(Lcom/amazon/kcp/library/releaselicense/NonScrollListView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->list:Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    return-void
.end method

.method public final setReadNowButton$LibraryModule_release(Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_remove_and_read_now_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p2, :cond_0

    .line 364
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->rlr_read_remove_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 366
    :cond_0
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->rlr_read_download_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    const-string v1, "readNowButton"

    .line 368
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 369
    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->readNowButtonListener$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;ZLcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setReadNowButtonColorAndBackground$LibraryModule_release(Landroid/widget/Button;)V
    .locals 6

    const-string v0, "readNowButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 503
    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->rlr_resume_primary_button_text_color:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 504
    invoke-virtual {p0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "obtainStyledAttributes(attrArray)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 505
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 506
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v0, [I

    .line 507
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->rlr_resume_primary_button_background:I

    aput v1, v0, v3

    .line 508
    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 510
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final setSelectedDeviceList$LibraryModule_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    return-void
.end method

.method public final toggleCheckBoxAndSaveSelectedItem$LibraryModule_release(ZLandroid/widget/CheckedTextView;I)V
    .locals 1

    const-string v0, "checkedTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 385
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getDeviceId(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 387
    iget-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 390
    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 391
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getDeviceId(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 393
    iget-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->selectedDeviceList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
