.class public Lcom/amazon/kcp/notifications/actions/OpenChatAction$MetricsConstants;
.super Ljava/lang/Object;
.source "OpenChatAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/actions/OpenChatAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricsConstants"
.end annotation


# static fields
.field public static final HELP_AND_FEEDBACK_ACTIVITY_MOVED:Ljava/lang/String; = "HnfActivityMoved"

.field public static final HOME_ACTIVITY_MOVED:Ljava/lang/String; = "HomeActivityMoved"

.field public static final NAME:Ljava/lang/String; = "openChatAction"

.field public static final NOTIFICATION_TAP:Ljava/lang/String; = "ChatNotificationTap"

.field public static final NO_NETWORK:Ljava/lang/String; = "CantileverNoNetworkConnectivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
