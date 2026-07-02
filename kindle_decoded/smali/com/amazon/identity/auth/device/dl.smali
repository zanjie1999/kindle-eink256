.class public final Lcom/amazon/identity/auth/device/dl;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static jC:Lcom/amazon/identity/auth/device/ea;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized C(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/dl;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/dl;->jC:Lcom/amazon/identity/auth/device/ea;

    if-nez v1, :cond_0

    .line 1029
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cj;->x(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/dl;->jC:Lcom/amazon/identity/auth/device/ea;

    .line 24
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/dl;->jC:Lcom/amazon/identity/auth/device/ea;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cj;->x(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/dl;->jC:Lcom/amazon/identity/auth/device/ea;

    return-void
.end method
