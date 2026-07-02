.class public Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory;
.super Ljava/lang/Object;
.source "NotificationsTapActionFactory.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTapAction(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationTapAction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    invoke-static {p1}, Lcom/amazon/kcp/notifications/PushNotificationAction;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/PushNotificationAction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unsupported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenStoreUrlAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenStoreUrlAction;-><init>()V

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenChatAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenChatAction;-><init>()V

    return-object p1

    .line 30
    :pswitch_2
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenBookWizardAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenBookWizardAction;-><init>()V

    return-object p1

    .line 28
    :pswitch_3
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenNewPeriodicalAction;-><init>()V

    return-object p1

    .line 26
    :pswitch_4
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;-><init>()V

    return-object p1

    .line 24
    :pswitch_5
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenPageIdAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenPageIdAction;-><init>()V

    return-object p1

    .line 22
    :pswitch_6
    new-instance p1, Lcom/amazon/kcp/notifications/actions/SignupForNewChannelAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/SignupForNewChannelAction;-><init>()V

    return-object p1

    .line 20
    :pswitch_7
    new-instance p1, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;-><init>()V

    return-object p1

    .line 18
    :pswitch_8
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenBrowseNodeAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenBrowseNodeAction;-><init>()V

    return-object p1

    .line 16
    :pswitch_9
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenHelpPageAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenHelpPageAction;-><init>()V

    return-object p1

    .line 14
    :pswitch_a
    new-instance p1, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/DownloadSampleAction;-><init>()V

    return-object p1

    .line 12
    :pswitch_b
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenLibraryAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenLibraryAction;-><init>()V

    return-object p1

    .line 10
    :pswitch_c
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenStoreDetailPageAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenStoreDetailPageAction;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
