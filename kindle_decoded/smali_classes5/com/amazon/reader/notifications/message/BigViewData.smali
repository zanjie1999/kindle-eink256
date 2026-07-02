.class public Lcom/amazon/reader/notifications/message/BigViewData;
.super Ljava/lang/Object;
.source "BigViewData.java"


# instance fields
.field private bigContentTitle:Ljava/lang/String;

.field private bigFirstButtonAction:Lcom/amazon/reader/notifications/message/NotificationAction;

.field private bigPictureUrl:Ljava/lang/String;

.field private bigSecondButtonAction:Lcom/amazon/reader/notifications/message/NotificationAction;

.field private bigText:Ljava/lang/String;

.field private summaryText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigContentTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBigFirstButtonAction()Lcom/amazon/reader/notifications/message/NotificationAction;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigFirstButtonAction:Lcom/amazon/reader/notifications/message/NotificationAction;

    return-object v0
.end method

.method public getBigPictureUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBigSecondButtonAction()Lcom/amazon/reader/notifications/message/NotificationAction;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigSecondButtonAction:Lcom/amazon/reader/notifications/message/NotificationAction;

    return-object v0
.end method

.method public getBigText()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigText:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/BigViewData;->summaryText:Ljava/lang/String;

    return-object v0
.end method

.method public setBigContentTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigContentTitle:Ljava/lang/String;

    return-void
.end method

.method public setBigFirstButtonAction(Lcom/amazon/reader/notifications/message/NotificationAction;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigFirstButtonAction:Lcom/amazon/reader/notifications/message/NotificationAction;

    return-void
.end method

.method public setBigPictureUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigPictureUrl:Ljava/lang/String;

    return-void
.end method

.method public setBigSecondButtonAction(Lcom/amazon/reader/notifications/message/NotificationAction;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigSecondButtonAction:Lcom/amazon/reader/notifications/message/NotificationAction;

    return-void
.end method

.method public setBigText(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewData;->bigText:Ljava/lang/String;

    return-void
.end method

.method public setSummaryText(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/BigViewData;->summaryText:Ljava/lang/String;

    return-void
.end method
