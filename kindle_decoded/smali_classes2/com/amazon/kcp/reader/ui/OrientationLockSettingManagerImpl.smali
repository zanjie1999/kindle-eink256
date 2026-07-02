.class public final Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;
.super Ljava/lang/Object;
.source "OrientationLockSettingManager.kt"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockSetting(I)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setOrientation(I)V

    .line 20
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public unlockSetting()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setOrientation(I)V

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
