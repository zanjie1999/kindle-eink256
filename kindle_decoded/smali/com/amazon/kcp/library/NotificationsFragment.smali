.class public Lcom/amazon/kcp/library/NotificationsFragment;
.super Landroidx/fragment/app/Fragment;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;,
        Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;,
        Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final listAdapter:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

.field private final pfmChangeListener:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field settingsItemsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/NotificationsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;-><init>(Lcom/amazon/kcp/library/NotificationsFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->listAdapter:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    .line 104
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/NotificationsFragment$1;-><init>(Lcom/amazon/kcp/library/NotificationsFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->pfmChangeListener:Lcom/amazon/kindle/event/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/NotificationsFragment;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/NotificationsFragment;->areNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/NotificationsFragment;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/NotificationsFragment;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/NotificationsFragment;->prepareSettingsItemCheckBox(Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/NotificationsFragment;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/NotificationsFragment;->onSettingsItemCheckBoxChanged(Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V

    return-void
.end method

.method private areNotificationsEnabled()Z
    .locals 1

    .line 466
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method private onSettingsItemCheckBoxChanged(Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V
    .locals 3

    .line 219
    invoke-interface {p2}, Landroid/widget/Checkable;->toggle()V

    .line 220
    sget-object p3, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    if-ne p1, p3, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo p3, "notification"

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setDownloadNotificationsSetting(Z)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p3, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    if-eqz p3, :cond_2

    .line 224
    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result p2

    .line 225
    iget-object p3, p0, Lcom/amazon/kcp/library/NotificationsFragment;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    iget-object v0, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setNotificationsChannelSubscribed(Ljava/lang/String;Z)V

    .line 226
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 228
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    iget-object v0, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 229
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/UserSettingsController;->createNotificationsChannelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ReaderNotifications"

    .line 228
    invoke-interface {p3, v2, v0, p2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 231
    :cond_1
    iget-object p1, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/UserSettingsController;->createNotificationsChannelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportPushNotificationsSettings(Ljava/lang/String;Z)V

    goto :goto_0

    .line 233
    :cond_2
    sget-object p2, Lcom/amazon/kcp/library/NotificationsFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized checkbox change: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private prepareSettingsItemCheckBox(Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;)V
    .locals 2

    .line 209
    sget-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    if-ne p1, v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isDownloadNotificationsEnabled()Z

    move-result p1

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 214
    :cond_1
    sget-object p2, Lcom/amazon/kcp/library/NotificationsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized checkbox prepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addGlobalNotificationSwitch(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 146
    sget v0, Lcom/amazon/kindle/librarymodule/R$menu;->ruby_notifications_action_menu:I

    .line 148
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p2, 0x0

    .line 149
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 151
    invoke-direct {p0}, Lcom/amazon/kcp/library/NotificationsFragment;->areNotificationsEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 153
    new-instance p2, Lcom/amazon/kcp/library/NotificationsFragment$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/NotificationsFragment$2;-><init>(Lcom/amazon/kcp/library/NotificationsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected getValidChannels()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    .line 248
    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v3

    .line 249
    sget-object v4, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v4}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 253
    invoke-virtual {v4, v2}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->isDeviceTypePermitted(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ")"

    if-nez v5, :cond_0

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not supported for device type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (allowed device types are "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getDeviceTypes()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v4, v3}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->isCountryPermitted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping channel "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it is not permitted in country "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (allowed countries are "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v4}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getCountriesSet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 127
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->pfmChangeListener:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NotificationsFragment;->populateSettingsList()V

    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/NotificationsFragment;->addGlobalNotificationSwitch(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 137
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->settings_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 139
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 140
    iget-object p3, p0, Lcom/amazon/kcp/library/NotificationsFragment;->listAdapter:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/NotificationsFragment;->pfmChangeListener:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/event/IEventProvider;->unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->listAdapter:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method populateSettingsList()V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NotificationsFragment;->getValidChannels()Ljava/util/List;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 193
    new-instance v4, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    sget-object v5, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    invoke-virtual {v3, v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v3, v0}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getSettingsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/reader/notifications/channel/ChannelDescription;)V

    .line 196
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    sget-object v1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public refreshList()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment;->listAdapter:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
