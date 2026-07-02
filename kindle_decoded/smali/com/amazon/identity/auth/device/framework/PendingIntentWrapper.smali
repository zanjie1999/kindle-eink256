.class public final Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final ky:Landroid/app/PendingIntent;

.field public final kz:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;Landroid/content/Intent;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->ky:Landroid/app/PendingIntent;

    .line 26
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->kz:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    .line 27
    iput-object p3, p0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->intent:Landroid/content/Intent;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->Service:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1065
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;-><init>(Landroid/app/PendingIntent;Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;Landroid/content/Intent;)V

    return-object v1
.end method
