.class public Lcom/amazon/kcp/notifications/ChannelSignupDialog;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ChannelSignupDialog.java"


# static fields
.field private static final ACTION_PERFORMED:Ljava/lang/String; = "ACTION_%s"

.field private static final DECLINE_SIGNUP_CHANNEL_FORMAT:Ljava/lang/String; = "doNotSignupFor%s"

.field private static final SIGNUP_CHANNEL_FORMAT:Ljava/lang/String; = "signupFor%s"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private channelId:Ljava/lang/String;

.field private userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcceptButtonPressed(Landroid/view/View;)V
    .locals 7

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    iget-object v0, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setNotificationsChannelSubscribed(Ljava/lang/String;Z)V

    .line 120
    invoke-static {p0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->register(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "signupFor%s"

    .line 124
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ReaderNotifications"

    .line 123
    invoke-interface {v2, v5, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    .line 125
    iget-object v6, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    aput-object v6, v3, v0

    .line 126
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "ACTION_%s"

    .line 125
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationsAction(Ljava/lang/String;Lcom/amazon/kcp/notifications/ParcelableMetadata;)V

    .line 127
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v1, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    aput-object v2, p1, v0

    const-string v2, "_ON"

    aput-object v2, p1, v1

    const-string v1, "%s%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationsAction(Ljava/lang/String;Lcom/amazon/kcp/notifications/ParcelableMetadata;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$string;->channels_signup_accept_toast:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "channelId"

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object p1, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->TAG:Ljava/lang/String;

    const-string v0, "Channel Id key not found"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-interface {v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 66
    iget-object v3, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    if-nez v1, :cond_4

    .line 74
    sget-object p1, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->TAG:Ljava/lang/String;

    const-string v0, "Channel Id key is not associated with any channel available on the device"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_4
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 80
    sget p1, Lcom/amazon/kindle/krl/R$layout;->channels_signup_dialog:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 82
    sget p1, Lcom/amazon/kindle/krl/R$string;->channels_signup_description_id:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getSignupDialogText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget p1, Lcom/amazon/kindle/krl/R$string;->channels_signup_title_id:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onDeclineButtonPressed(Landroid/view/View;)V
    .locals 7

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    iget-object v0, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setNotificationsChannelSubscribed(Ljava/lang/String;Z)V

    .line 100
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "doNotSignupFor%s"

    .line 103
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ReaderNotifications"

    .line 102
    invoke-interface {v2, v5, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v0, [Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    .line 104
    iget-object v6, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    aput-object v6, v3, v1

    .line 105
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "ACTION_%s"

    .line 104
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationsAction(Ljava/lang/String;Lcom/amazon/kcp/notifications/ParcelableMetadata;)V

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/amazon/kcp/notifications/ChannelSignupDialog;->channelId:Ljava/lang/String;

    aput-object v2, p1, v1

    const-string v1, "_OFF"

    aput-object v1, p1, v0

    const-string v1, "%s%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationsAction(Ljava/lang/String;Lcom/amazon/kcp/notifications/ParcelableMetadata;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$string;->channels_signup_decline_toast:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
