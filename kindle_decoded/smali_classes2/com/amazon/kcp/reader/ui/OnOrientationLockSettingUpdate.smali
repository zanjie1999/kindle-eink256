.class public final Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;
.super Ljava/lang/Object;
.source "OrientationLockSettingManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final isLocked:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;->isLocked:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;->isLocked:Z

    return v0
.end method
