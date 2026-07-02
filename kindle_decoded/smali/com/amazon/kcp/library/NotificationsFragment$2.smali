.class Lcom/amazon/kcp/library/NotificationsFragment$2;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/NotificationsFragment;->addGlobalNotificationSwitch(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/NotificationsFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$2;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 156
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$2;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/NotificationsFragment;->access$100(Lcom/amazon/kcp/library/NotificationsFragment;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$2;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {p2}, Lcom/amazon/kcp/library/NotificationsFragment;->access$000(Lcom/amazon/kcp/library/NotificationsFragment;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setNotificationsSetting(Z)V

    .line 157
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$2;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/NotificationsFragment;->refreshList()V

    .line 158
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->NOTIFICATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 161
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kcp/library/NotificationsFragment$2;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/NotificationsFragment;->access$000(Lcom/amazon/kcp/library/NotificationsFragment;)Z

    move-result v1

    const-string v2, "ReaderNotifications"

    .line 160
    invoke-interface {p1, v2, p2, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->NOTIFICATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$2;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {p2}, Lcom/amazon/kcp/library/NotificationsFragment;->access$000(Lcom/amazon/kcp/library/NotificationsFragment;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportPushNotificationsSettings(Ljava/lang/String;Z)V

    return-void
.end method
