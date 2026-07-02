.class public Lcom/amazon/kcp/notifications/actions/OpenHelpPageAction;
.super Ljava/lang/Object;
.source "OpenHelpPageAction.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/NotificationTapAction;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/notifications/actions/OpenHelpPageAction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/OpenHelpPageAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
    .locals 2

    .line 32
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
    .locals 0

    .line 23
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/library/LibraryView;->HELP:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method
