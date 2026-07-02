.class public Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;
.super Ljava/lang/Object;
.source "OpenNewPeriodicalAction.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/NotificationTapAction;


# static fields
.field private static final CLOUD:Ljava/lang/String; = "cloud"

.field private static final EDITION:Ljava/lang/String; = "edition"

.field private static final NEW_EDITION_ASIN:Ljava/lang/String; = "asin"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIBookByEditionASIN(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 118
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTapActionAsPerDownloadStateOfIBook(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 3

    const-string v0, "cloud"

    if-eqz p1, :cond_3

    .line 92
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->FAILED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/ILocalBookData;->isBookRead()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "edition"

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
    .locals 4

    .line 61
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getData()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have data"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "asin"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->getIBookByEditionASIN(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    .line 72
    invoke-direct {p0, v2}, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->getTapActionAsPerDownloadStateOfIBook(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 73
    sget-object v2, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no action for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 68
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have proper asin"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public performTapAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .line 34
    sget-object p1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p2, "asin"

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->getIBookByEditionASIN(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    .line 37
    invoke-direct {p0, p2}, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->getTapActionAsPerDownloadStateOfIBook(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "edition"

    if-eqz p2, :cond_0

    .line 39
    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_1

    .line 43
    sget-object p2, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " No action after tap for asin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "cloud"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    :cond_3
    :goto_0
    return-void
.end method
