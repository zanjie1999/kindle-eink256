.class public Lcom/amazon/kindle/krx/events/PushNotificationOpenedEvent;
.super Ljava/lang/Object;
.source "PushNotificationOpenedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field public final notificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/PushNotificationOpenedEvent;->notificationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
