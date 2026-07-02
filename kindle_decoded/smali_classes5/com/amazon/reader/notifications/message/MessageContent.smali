.class public Lcom/amazon/reader/notifications/message/MessageContent;
.super Ljava/lang/Object;
.source "MessageContent.java"


# instance fields
.field private bigViewStyle:Lcom/amazon/reader/notifications/message/BigViewStyle;

.field private contentText:Ljava/lang/String;

.field private largeIconUrl:Ljava/lang/String;

.field private tapAction:Lcom/amazon/reader/notifications/message/NotificationAction;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigViewStyle()Lcom/amazon/reader/notifications/message/BigViewStyle;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageContent;->bigViewStyle:Lcom/amazon/reader/notifications/message/BigViewStyle;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageContent;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIconUrl()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageContent;->largeIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTapAction()Lcom/amazon/reader/notifications/message/NotificationAction;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageContent;->tapAction:Lcom/amazon/reader/notifications/message/NotificationAction;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBigViewStyle(Lcom/amazon/reader/notifications/message/BigViewStyle;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageContent;->bigViewStyle:Lcom/amazon/reader/notifications/message/BigViewStyle;

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageContent;->contentText:Ljava/lang/String;

    return-void
.end method

.method public setLargeIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageContent;->largeIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setTapAction(Lcom/amazon/reader/notifications/message/NotificationAction;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageContent;->tapAction:Lcom/amazon/reader/notifications/message/NotificationAction;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageContent;->title:Ljava/lang/String;

    return-void
.end method
