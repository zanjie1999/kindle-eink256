.class public Lcom/amazon/kcp/notifications/actions/TapActionFactorySingleton;
.super Ljava/lang/Object;
.source "TapActionFactorySingleton.java"


# static fields
.field private static factoryInstance:Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;
    .locals 2

    .line 18
    sget-object v0, Lcom/amazon/kcp/notifications/actions/TapActionFactorySingleton;->factoryInstance:Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;

    if-eqz v0, :cond_0

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to get NotificationsTapActionFactory instance before it has been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFactory(Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/amazon/kcp/notifications/actions/TapActionFactorySingleton;->factoryInstance:Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;

    return-void
.end method
