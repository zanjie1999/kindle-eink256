.class public abstract Lcom/amazon/kcp/application/ThirdPartyCoreModule;
.super Ljava/lang/Object;
.source "ThirdPartyCoreModule.java"


# direct methods
.method static getGroupService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;)Lcom/amazon/kindle/content/IGroupService;
    .locals 1

    .line 63
    invoke-interface {p0, p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleContentDB(Landroid/content/Context;)Lcom/amazon/kindle/content/db/KindleContentDB;

    move-result-object p0

    .line 64
    new-instance p1, Lcom/amazon/kindle/content/dao/GroupContentDAO;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/content/dao/GroupContentDAO;-><init>(Lcom/amazon/kindle/content/db/KindleContentDB;)V

    .line 66
    new-instance p0, Lcom/amazon/kindle/content/GroupContentService;

    new-instance v0, Lcom/amazon/kindle/content/CoverOrderStrategyFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/content/CoverOrderStrategyFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/GroupContentService;-><init>(Lcom/amazon/kindle/content/dao/IGroupContentDAO;Lcom/amazon/kindle/content/CoverOrderStrategyFactory;)V

    return-object p0
.end method

.method static getLibraryService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 11

    .line 45
    new-instance v10, Lcom/amazon/kindle/content/LibraryContentService;

    new-instance v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;

    invoke-direct {v2, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getInstance()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v3

    .line 50
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    .line 51
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookOwnershipRecorder()Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    move-result-object v6

    .line 52
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v7

    .line 53
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v8

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/content/LibraryContentService;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/dao/ILibraryContentDAO;Lcom/amazon/kindle/content/loader/ILocalContentFactory;ILcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/content/IBookOwnershipRecorder;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V

    .line 56
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSnapshotController()Lcom/amazon/kcp/application/ISnapshotController;

    move-result-object p0

    invoke-interface {p0, v10}, Lcom/amazon/kcp/application/ISnapshotController;->registerSnapshotLibraryDelegate(Lcom/amazon/kcp/library/models/ILibrarySnapshotList;)V

    return-object v10
.end method

.method static getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static getScanLocalContentUtils()Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 2

    .line 88
    new-instance v0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    new-instance v1, Lcom/amazon/kindle/scan/BaseFullScanRedriveHelper;

    invoke-direct {v1}, Lcom/amazon/kindle/scan/BaseFullScanRedriveHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;-><init>(Lcom/amazon/kindle/scan/FullScanRedriveHelper;)V

    .line 89
    invoke-static {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->setInstance(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V

    return-object v0
.end method
