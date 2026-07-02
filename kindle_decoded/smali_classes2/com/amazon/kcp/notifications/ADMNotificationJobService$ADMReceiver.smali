.class public Lcom/amazon/kcp/notifications/ADMNotificationJobService$ADMReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "ADMNotificationJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/ADMNotificationJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADMReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    const-class v0, Lcom/amazon/kcp/notifications/ADMNotificationJobService;

    const/16 v1, 0x20f9

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;I)V

    return-void
.end method
