.class synthetic Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;
.super Ljava/lang/Object;
.source "NotificationsTapActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    invoke-static {}, Lcom/amazon/kcp/notifications/PushNotificationAction;->values()[Lcom/amazon/kcp/notifications/PushNotificationAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_STORE_DETAIL_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_LIBRARY:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->DOWNLOAD_SAMPLE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_HELP_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_BROWSE_NODE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_KINDLE_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_NEW_CHANNEL:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_PAGE_ID:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_SLIDESHOW:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_PERIODICAL_EDITION:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_BOOKWIZARD:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_CHAT:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory$1;->$SwitchMap$com$amazon$kcp$notifications$PushNotificationAction:[I

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_STORE_URL:Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
