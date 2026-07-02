.class public Lcom/audible/mobile/player/policy/ShowNotificationUnbindPolicy;
.super Lcom/audible/mobile/player/policy/UnbindPolicy;
.source "ShowNotificationUnbindPolicy.java"


# instance fields
.field private notificationFactoryProvider:Lcom/audible/mobile/notification/NotificationFactoryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/notification/NotificationFactoryProvider;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/policy/UnbindPolicy;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/audible/mobile/player/policy/ShowNotificationUnbindPolicy;->notificationFactoryProvider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

    return-void
.end method


# virtual methods
.method public action()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/audible/mobile/player/policy/UnbindPolicy;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 27
    iget-object v1, p0, Lcom/audible/mobile/player/policy/ShowNotificationUnbindPolicy;->notificationFactoryProvider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

    const-class v2, Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lcom/audible/mobile/notification/NotificationFactory;->getId()I

    move-result v2

    invoke-interface {v1}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
