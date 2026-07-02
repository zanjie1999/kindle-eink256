.class public final Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;
.super Landroid/app/Notification;
.source "NotificationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;,
        Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$GingerbreadBuilder;,
        Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;,
        Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    }
.end annotation


# instance fields
.field public mContentIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

.field public mDeleteIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

.field public mFullScreenIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    .line 530
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->mContentIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    .line 531
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->mDeleteIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;-><init>(Landroid/os/Parcel;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 2

    .line 536
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 540
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 544
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$GingerbreadBuilder;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$GingerbreadBuilder;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 548
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public setDeletedIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 1

    .line 579
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 580
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->mDeleteIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-void
.end method

.method public setFullScreenIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 1

    .line 585
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 586
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->mFullScreenIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0

    .line 558
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use the setLatestEventInfo that takes a PendingIntentWrapper."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V
    .locals 0

    .line 566
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->mContentIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    if-eqz p4, :cond_0

    .line 571
    invoke-virtual {p4}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 574
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method
