.class public Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;
.super Ljava/lang/Object;
.source "DownloadSampleAction.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/NotificationTapAction;


# static fields
.field public static final ASIN_KEY:Ljava/lang/String; = "asin"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 2

    .line 118
    sget-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILibraryUIManager$LibraryMode:[I

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0

    .line 122
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0

    .line 120
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method private isActionDataValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
    .locals 3

    .line 96
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getData()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not have data"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "asin"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 108
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Customer already owns this asin"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 103
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not have asin"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
    .locals 4

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not authenticated, cannot handle action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->isActionDataValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asin already on device, cannot handle action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is valid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public performTapAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7

    .line 43
    sget-object p1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    const-string p2, "asin"

    .line 49
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p2

    .line 55
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 58
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    .line 58
    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 62
    :cond_0
    new-instance p1, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;

    const-string v0, "PushNotification"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, p1}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    goto :goto_0

    .line 64
    :cond_1
    sget-object p1, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;->TAG:Ljava/lang/String;

    const-string p2, "Attempted to download sample with no ASIN."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
