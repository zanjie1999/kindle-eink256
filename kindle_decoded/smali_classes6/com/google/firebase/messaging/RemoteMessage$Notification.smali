.class public Lcom/google/firebase/messaging/RemoteMessage$Notification;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final bodyLocArgs:[Ljava/lang/String;

.field private final bodyLocKey:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private final clickAction:Ljava/lang/String;

.field private final color:Ljava/lang/String;

.field private final defaultLightSettings:Z

.field private final defaultSound:Z

.field private final defaultVibrateTimings:Z

.field private final eventTime:Ljava/lang/Long;

.field private final icon:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final lightSettings:[I

.field private final link:Landroid/net/Uri;

.field private final localOnly:Z

.field private final notificationCount:Ljava/lang/Integer;

.field private final notificationPriority:Ljava/lang/Integer;

.field private final sound:Ljava/lang/String;

.field private final sticky:Z

.field private final tag:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final titleLocArgs:[Ljava/lang/String;

.field private final titleLocKey:Ljava/lang/String;

.field private final vibrateTimings:[J

.field private final visibility:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/messaging/NotificationParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcm.n.title"

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->title:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getLocalizationResourceForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->titleLocKey:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getLocalizationArgs(Lcom/google/firebase/messaging/NotificationParams;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->titleLocArgs:[Ljava/lang/String;

    const-string v0, "gcm.n.body"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->body:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getLocalizationResourceForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->bodyLocKey:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getLocalizationArgs(Lcom/google/firebase/messaging/NotificationParams;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->bodyLocArgs:[Ljava/lang/String;

    const-string v0, "gcm.n.icon"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->icon:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getSoundResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->sound:Ljava/lang/String;

    const-string v0, "gcm.n.tag"

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->tag:Ljava/lang/String;

    const-string v0, "gcm.n.color"

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->color:Ljava/lang/String;

    const-string v0, "gcm.n.click_action"

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->clickAction:Ljava/lang/String;

    const-string v0, "gcm.n.android_channel_id"

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->channelId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getLink()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->link:Landroid/net/Uri;

    const-string v0, "gcm.n.image"

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->imageUrl:Ljava/lang/String;

    const-string v0, "gcm.n.ticker"

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->ticker:Ljava/lang/String;

    const-string v0, "gcm.n.notification_priority"

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->notificationPriority:Ljava/lang/Integer;

    const-string v0, "gcm.n.visibility"

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->visibility:Ljava/lang/Integer;

    const-string v0, "gcm.n.notification_count"

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->notificationCount:Ljava/lang/Integer;

    const-string v0, "gcm.n.sticky"

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->sticky:Z

    const-string v0, "gcm.n.local_only"

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->localOnly:Z

    const-string v0, "gcm.n.default_sound"

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultSound:Z

    const-string v0, "gcm.n.default_vibrate_timings"

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultVibrateTimings:Z

    const-string v0, "gcm.n.default_light_settings"

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultLightSettings:Z

    const-string v0, "gcm.n.event_time"

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->eventTime:Ljava/lang/Long;

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getLightSettings()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->lightSettings:[I

    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getVibrateTimings()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->vibrateTimings:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/messaging/NotificationParams;Lcom/google/firebase/messaging/RemoteMessage$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;-><init>(Lcom/google/firebase/messaging/NotificationParams;)V

    return-void
.end method

.method private static getLocalizationArgs(Lcom/google/firebase/messaging/NotificationParams;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/NotificationParams;->getLocalizationArgsForKey(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->body:Ljava/lang/String;

    return-object v0
.end method
