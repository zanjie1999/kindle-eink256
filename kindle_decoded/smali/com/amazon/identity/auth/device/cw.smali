.class public Lcom/amazon/identity/auth/device/cw;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cw"


# instance fields
.field private final iB:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/identity/auth/device/cw;->iB:Landroid/app/AlarmManager;

    .line 20
    iput-object v0, p0, Lcom/amazon/identity/auth/device/cw;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alarm"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cw;->iB:Landroid/app/AlarmManager;

    .line 26
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cw;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JLcom/amazon/identity/auth/device/framework/PendingIntentWrapper;)V
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cw;->iB:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->ky:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    sget-object p2, Lcom/amazon/identity/auth/device/cw;->TAG:Ljava/lang/String;

    const-string p3, "AlarmManagerWrapper set failed!"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;)V
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cw;->iB:Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->ky:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/device/cw;->TAG:Ljava/lang/String;

    const-string v1, "AlarmManagerWrapper cancel failed!"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
