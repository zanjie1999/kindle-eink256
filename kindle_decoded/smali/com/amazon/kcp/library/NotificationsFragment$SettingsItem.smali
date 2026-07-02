.class Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingsItem"
.end annotation


# static fields
.field static final DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;


# instance fields
.field final channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

.field final id:I

.field final text1:I

.field final text2:I

.field final textValue1:Ljava/lang/String;

.field final textValue2:Ljava/lang/String;

.field final viewType:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->app_notifications:I

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->settings_app_notifications:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;III)V

    .line 61
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->download_notifications:I

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->download_notifications_detail:I

    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->settings_download_notifications:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;III)V

    sput-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    .line 62
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->subscription_settings:I

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->settings_subscription_settings:I

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;III)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;III)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    .line 75
    iput p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text1:I

    .line 76
    iput p3, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text2:I

    .line 77
    iput p4, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->id:I

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue1:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue2:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/reader/notifications/channel/ChannelDescription;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text1:I

    .line 86
    iput p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text2:I

    .line 87
    iput p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->id:I

    .line 88
    iput-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue1:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue2:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->channel:Lcom/amazon/reader/notifications/channel/ChannelDescription;

    return-void
.end method
