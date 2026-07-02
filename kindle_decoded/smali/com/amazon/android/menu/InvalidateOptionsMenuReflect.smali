.class public Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;
.super Ljava/lang/Object;
.source "InvalidateOptionsMenuReflect.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static supportsInvalidOptionsMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->supportsInvalidOptionsMenu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 3

    .line 28
    sget-boolean v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->supportsInvalidOptionsMenu:Z

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->supportsInvalidOptionsMenu:Z

    .line 36
    sget-object v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateOptionsMenu is not supported on this device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
