.class public Lcom/amazon/kcp/notifications/ADMNotificationHandler$ADMReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "ADMNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/ADMNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADMReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/notifications/ADMNotificationHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    return-void
.end method
