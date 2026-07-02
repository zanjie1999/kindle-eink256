.class public abstract Lcom/amazon/kcp/library/LibraryController;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Lcom/amazon/kcp/library/IAndroidLibraryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryController$BaseFilter;
    }
.end annotation


# static fields
.field private static final MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final SHOULD_SEND_UPGRADE_EVENT:Ljava/lang/String; = "ShouldSendUpgradeEvent"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private final builtinUserIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field protected libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

.field protected mode:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

.field private final revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

.field private scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

.field private final sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    const-class v0, Lcom/amazon/kcp/library/LibraryController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryController;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/content/ILibraryService;Ljava/util/Set;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->FULL:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->mode:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    .line 196
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 198
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 199
    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 200
    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryController;->builtinUserIds:Ljava/util/Set;

    .line 201
    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryController;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    .line 202
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRevokeOwnershipTaskCreator()Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryController;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    const-string p3, "LibrarySettings"

    const/4 p4, 0x0

    .line 203
    invoke-interface {p2, p3, p4, p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 204
    invoke-interface {p7, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/LibraryController;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryController;->postInitialization()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/LibraryController;)Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryController;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    return-object p0
.end method

.method private canMakeRequest()Z
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 1149
    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    return v0
.end method

.method private cleanKRFCaches()V
    .locals 6

    .line 291
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getPathForKRFCache()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 297
    sget-object v1, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown I/O error while listing files for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_0
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/io/FileSystemHelper;->emptyDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 308
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private deleteCMSItems(Ljava/util/Collection;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;",
            "Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;",
            ")V"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/library/ILibraryItemId;

    .line 722
    invoke-interface {v2}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-interface {v2}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getCmsItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCMSActionRunnerFactory()Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 726
    invoke-interface {p1, v2, p2, v0, v1}, Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;->createRunner(Landroid/content/Context;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/util/Collection;Ljava/util/Collection;)Lcom/amazon/kindle/cms/ICMSActionRunner;

    move-result-object p1

    .line 727
    invoke-interface {p1}, Lcom/amazon/kindle/cms/ICMSActionRunner;->dispatch()V

    return-void
.end method

.method private deleteGroupItems(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 979
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupItemsMetadataForId(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p1

    .line 983
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 984
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->deleteBooks(Ljava/util/Collection;)V

    return-void
.end method

.method private dispatchActionToCMSItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V
    .locals 6

    .line 702
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryController;->getConsumerId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 705
    sget-object p2, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a CMS item, not dispatching CMS action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 709
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 711
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 712
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCMSActionRunnerFactory()Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 713
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;->createRunner(Landroid/content/Context;Ljava/lang/String;JLcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)Lcom/amazon/kindle/cms/ICMSActionRunner;

    move-result-object p1

    .line 715
    invoke-interface {p1}, Lcom/amazon/kindle/cms/ICMSActionRunner;->dispatch()V

    return-void
.end method

.method private failureDetailsForContent(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;
    .locals 9

    .line 631
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    if-nez v3, :cond_1

    .line 642
    sget-object p1, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    const-string v0, "Null error state from content"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getCDEErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorLink()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorLinkTitle()Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    move-object v5, v1

    move-object v6, v2

    move-object v7, v4

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 654
    :goto_0
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static getConsumerId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/Long;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1349
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getiLocalBookItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 3

    .line 831
    instance-of v0, p1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    if-eqz v0, :cond_0

    .line 832
    check-cast p1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    goto :goto_0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 837
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->getLocalBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    return-object p1
.end method

.method private launchRemoveItemActivity(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 4

    .line 1302
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 1303
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->error_title_open_book:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 1304
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->error_message_open_book:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 1302
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1305
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "alert_book_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1306
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private newShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.amazon.kindle.LAUNCH_LIBRARY_VIEW"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 408
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GroupTypeExtraKey"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    return-object p1
.end method

.method private postInitialization()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/cover/db/CoverDBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/cover/db/CoverDBHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    return-void
.end method

.method private removeContentForUnregisteredUsers()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserIds()Ljava/util/Collection;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->builtinUserIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    sget-object v2, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    const-string v3, "Deleting contents for unregistered user.."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setLocalBookStateKeptStatus(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 904
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 907
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 909
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/model/content/LocalBookState;->setBookKept(Z)V

    .line 913
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 915
    sget-object p2, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    const-string v0, "Unable to persist bookState in setItemKept"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 918
    :cond_1
    sget-object p2, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local book not found to set kept status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;ZLandroid/os/Bundle;)V
    .locals 1

    .line 389
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p1, v0, :cond_1

    .line 393
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/kcp/library/LibraryController;->createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    const/high16 p4, 0x4000000

    .line 395
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p4, 0x10000

    .line 396
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    iget-object p4, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p4, p2, p3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;Z)V

    .line 400
    :cond_0
    sget-object p2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_NAV:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p2

    .line 401
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 400
    invoke-static {p2, p1, p3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 390
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported libraryView - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private showPage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->clear()V

    .line 530
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x4000000

    .line 531
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 532
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 534
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public cancelDownload(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 1

    .line 754
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->isReaderItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->cancelDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_0
    sget-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->CANCEL_DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryController;->dispatchActionToCMSItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V

    :goto_0
    return-void
.end method

.method public cancelDownload(Ljava/lang/String;)V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->cancel(Ljava/lang/String;Z)Z

    return-void
.end method

.method public cancelDownloads(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 870
    sget-object v0, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling download for multiple books"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 872
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->cancelDownload(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkForErrorAndDownloadBook(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 5

    .line 589
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 594
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 595
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/library/LibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1

    .line 597
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->failureDetailsForContent(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-result-object p3

    if-nez p3, :cond_2

    .line 599
    sget-object p2, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download failure reported for book: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " without details."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 602
    :cond_2
    invoke-virtual {p0, p1, v1, p3}, Lcom/amazon/kcp/library/LibraryController;->errorIntentForFailure(Ljava/lang/String;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;)Landroid/content/Intent;

    move-result-object p1

    .line 603
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p3

    const-string/jumbo v0, "start_transition_with_animation"

    .line 604
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p3, :cond_3

    const/high16 v1, 0x10000000

    .line 608
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 609
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-static {p2, p3, v1, p1, v0}, Lcom/amazon/kcp/util/LibraryUtils;->startActivityWithSharedElementTransition(Landroid/view/View;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Boolean;)V

    return v2

    :cond_4
    return v1
.end method

.method public checkForErrorAndDownloadItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 1

    .line 575
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->isReaderItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/LibraryController;->checkForErrorAndDownloadBook(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1

    .line 578
    :cond_0
    sget-object p2, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryController;->dispatchActionToCMSItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected createRemoteLicenseReleaseActivityIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 691
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->Companion:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kcp/library/LibraryController;->createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 418
    sget-object p3, Lcom/amazon/kcp/library/LibraryController$5;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    .line 441
    sget-object p2, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported libraryView: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    invoke-static {p2, p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 436
    :pswitch_0
    const-class p1, Lcom/amazon/kcp/store/StoreTabProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/store/StoreTabProvider;

    if-eqz p1, :cond_0

    .line 437
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 432
    :pswitch_1
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getLibraryTabId()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryController;->newShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    .line 432
    invoke-static {p3, v0, p1}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getLibraryTabId()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->DEVICE:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    .line 426
    invoke-direct {p0, p3, v0}, Lcom/amazon/kcp/library/LibraryController;->newShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p3

    .line 425
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 421
    :pswitch_3
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getLibraryTabId()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->CLOUD:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryController;->newShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    .line 421
    invoke-static {p2, p3, p1}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteBook(Ljava/lang/String;)V
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteBookWithMetricReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 936
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 939
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 940
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asin"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "guid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "filetype"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Deleted"

    .line 943
    invoke-static {p2, v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 946
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->deleteBook(Ljava/lang/String;)V

    return-void
.end method

.method public deleteBookWithMetricReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 954
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, p3, p4, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryController;->deleteBookWithMetricReport(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteBooks(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemsLocally(Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteItems(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 969
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/LibraryController;->deleteGroupItems(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 972
    :cond_0
    new-instance v2, Lcom/amazon/kcp/library/LibraryItemId;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/library/LibraryItemId;-><init>(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method public deleteItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)V"
        }
    .end annotation

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 995
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 997
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/library/ILibraryItemId;

    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting item \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' locally."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    invoke-interface {v2}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->isReaderContent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1001
    invoke-interface {v2}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getSerializedBookID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1004
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->deleteBooks(Ljava/util/Collection;)V

    .line 1010
    sget-object p1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->ARCHIVE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/library/LibraryController;->deleteCMSItems(Ljava/util/Collection;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V

    return-void
.end method

.method public deleteRemoteItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)V"
        }
    .end annotation

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/library/ILibraryItemId;

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting item \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from the cloud..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->isSample()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getSerializedBookID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/LibraryController;->revokeOwnership(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1033
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->isApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1037
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    const-string v2, "Delete remote item invoked on item type that we don\'t know how to delete."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    :cond_2
    sget-object p1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DELETE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryController;->deleteCMSItems(Ljava/util/Collection;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V

    return-void
.end method

.method public downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 3

    .line 735
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 739
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p2

    .line 740
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->values()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v0

    .line 739
    invoke-virtual {p2, p1, v0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 741
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "ConnectionError"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 746
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public downloadBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 9

    .line 845
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 848
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    .line 849
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 851
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p2

    invoke-interface {p2, p1, p4}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1

    .line 853
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/amazon/kcp/library/LibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1
.end method

.method public errorIntentForFailure(Ljava/lang/String;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;)Landroid/content/Intent;
    .locals 3

    if-eqz p3, :cond_0

    .line 662
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    .line 663
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorTitle()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "start_transition_with_animation"

    if-eqz p1, :cond_1

    .line 667
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_1

    if-eqz p3, :cond_1

    .line 668
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LicensesExceeded"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;

    .line 669
    invoke-virtual {v0}, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->isRemoteLicenseReleaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryController;->createRemoteLicenseReleaseActivityIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    .line 671
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 673
    :cond_1
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadErrorActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "book_id"

    .line 674
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_2

    .line 677
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "error_reason"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 678
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cde_error_message"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 679
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cde_error_title"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 680
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorLink()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cde_error_link"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 681
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->getErrorLinkTitle()Ljava/lang/String;

    move-result-object p3

    const-string v0, "cde_error_link_title"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x0

    .line 682
    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    .line 684
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public failureDetailsForBook(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 626
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->failureDetailsForContent(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-result-object p1

    return-object p1
.end method

.method public getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 3

    .line 1049
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    instance-of v1, v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v1, :cond_0

    .line 1055
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0

    .line 1059
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getCurrentLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getHelpAndFeedbackActivityIntent()Landroid/content/Intent;
    .locals 2

    .line 1329
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHelpAndFeedbackActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeLibraryIntent()Landroid/content/Intent;
    .locals 2

    .line 1339
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getKrxBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 1354
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object v0
.end method

.method public getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->mode:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    return-object v0
.end method

.method public getLibraryTabId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected initialize()V
    .locals 3

    .line 232
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPaths(Landroid/content/Context;Lcom/amazon/kindle/io/IPathDescriptor;)V

    .line 235
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryController;->removeContentForUnregisteredUsers()V

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->deletePendingUserContent(Z)V

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadResumer()Lcom/amazon/kindle/IDownloadResumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/IDownloadResumer;->resumeDownloads()V

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRevokeOwnershipResumer()Lcom/amazon/kindle/IRevokeOwnershipResumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/IRevokeOwnershipResumer;->resumeRevokeRequests()V

    .line 242
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryController;->cleanKRFCaches()V

    .line 243
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryController$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/LibraryController$2;-><init>(Lcom/amazon/kcp/library/LibraryController;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ShouldSendUpgradeEvent"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->deleteOfficeDocsEntriesInDB()V

    :cond_0
    return-void
.end method

.method public initializeLibrary(Z)V
    .locals 1

    .line 212
    new-instance v0, Lcom/amazon/kcp/library/LibraryController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryController$1;-><init>(Lcom/amazon/kcp/library/LibraryController;)V

    if-eqz p1, :cond_0

    .line 221
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isReaderItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1313
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public launchAppSettings()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kre_more_as_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setting_item_app_settings"

    .line 518
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/library/LibraryController;->launchFilteredSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchFilteredSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 509
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/library/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SettingFilter"

    .line 510
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TITLE"

    .line 511
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchLibrarySettings()V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->newLibrarySettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchReadingSettings()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kre_more_rs_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setting_item_reading_settings"

    .line 524
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/library/LibraryController;->launchFilteredSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public newLibrarySettingsIntent()Landroid/content/Intent;
    .locals 3

    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/library/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public onAnnotationsManagerEvent(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1192
    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getEventType()Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_PROCESSED:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    if-ne v0, v1, :cond_5

    .line 1195
    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1198
    sget-object p1, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load metadata "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1202
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1208
    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getMrpr()I

    move-result v4

    .line 1209
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object p1

    .line 1217
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1224
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    if-eq v4, v6, :cond_3

    .line 1227
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 1228
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    .line 1232
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v4

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1233
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1241
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1242
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1243
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1246
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->setHasReadAnnotations(Z)V

    .line 1247
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->loadAnnotations()V

    :cond_5
    return-void
.end method

.method public onAssetDownloadEvent(Lcom/amazon/kindle/event/AssetDownloadEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1161
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getEventType()Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;->MAIN_CONTENT_DOWNLOADED:Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 1162
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v0, :cond_1

    .line 1163
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 1164
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_SIDECARS:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 1166
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_1
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1172
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->onLogout()V

    :cond_0
    return-void
.end method

.method public onFileSystemChangedEvent(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1155
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPaths(Landroid/content/Context;Lcom/amazon/kindle/io/IPathDescriptor;)V

    .line 1156
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->refreshBookDirectory()V

    return-void
.end method

.method protected onLogout()V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearAllNotifications()V

    :cond_0
    return-void
.end method

.method public openItemByIntent(Lcom/amazon/kcp/reader/IReaderController;Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;)V
    .locals 1

    .line 795
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->isReaderItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->getiLocalBookItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->getiLocalBookItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p1, p3, p2, p4}, Lcom/amazon/kcp/reader/IReaderController;->openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 800
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->launchRemoveItemActivity(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 803
    :cond_1
    sget-object p1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/library/LibraryController;->dispatchActionToCMSItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V

    :goto_0
    return-void
.end method

.method public openItemByIntent(Lcom/amazon/kcp/reader/IReaderController;Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;I)V
    .locals 1

    .line 781
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->isReaderItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->getiLocalBookItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->getiLocalBookItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p1, p3, p2, p4, p5}, Lcom/amazon/kcp/reader/IReaderController;->openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0

    .line 786
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryController;->launchRemoveItemActivity(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 789
    :cond_1
    sget-object p1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/library/LibraryController;->dispatchActionToCMSItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)V

    :goto_0
    return-void
.end method

.method public refreshBookDirectory()V
    .locals 2

    .line 1069
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryController$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/LibraryController$4;-><init>(Lcom/amazon/kcp/library/LibraryController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public revokeOwnership(Ljava/lang/String;Z)V
    .locals 3

    .line 1105
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryController;->canMakeRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1124
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;->createRevokeOwnershipRequest(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 1126
    sget-object p2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    .line 1127
    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result p2

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result v2

    if-ne p2, v2, :cond_3

    .line 1131
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1133
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->deleteBook(Ljava/lang/String;)V

    .line 1137
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    sget-object p1, Lcom/amazon/kcp/library/LibraryController;->TAG:Ljava/lang/String;

    const-string v2, "Deleting Sample from Library on ownership revocation"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 1143
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;->createRevokeOwnershipRequest(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public search(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    .line 1093
    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    new-instance v2, Lcom/amazon/kcp/library/LibraryController$BaseFilter;

    invoke-direct {v2, p1}, Lcom/amazon/kcp/library/LibraryController$BaseFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    .line 1083
    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public searchByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    new-instance v2, Lcom/amazon/kcp/library/BookTypeQueryFilter;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/library/BookTypeQueryFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    .line 1100
    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public setBookKeptStatus(Ljava/lang/String;Z)V
    .locals 3

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryController;->setLocalBookStateKeptStatus(Ljava/lang/String;Z)V

    .line 883
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 887
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2, p1, v1, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setCurrentLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    return-void
.end method

.method public showLandingPage()V
    .locals 2

    .line 318
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryController;->showPage(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V

    return-void
.end method

.method public showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/library/LibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/amazon/kcp/library/LibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public signaledOpenItem(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .line 763
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryController;->isReaderItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryController;->getiLocalBookItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 766
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 767
    invoke-static {v0, p2}, Lcom/amazon/kcp/util/Utils;->shouldClosePreviousBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v0

    .line 769
    new-instance v1, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    invoke-interface {p1, p2, v1, v0, p3}, Lcom/amazon/kcp/reader/IReaderController;->prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
