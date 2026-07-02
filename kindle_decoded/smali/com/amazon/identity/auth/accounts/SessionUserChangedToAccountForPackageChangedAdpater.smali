.class public Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;
.super Landroid/content/BroadcastReceiver;
.source "DCP"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/ds;)Z
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->dl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 29
    sget-object p2, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->TAG:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 31
    new-instance p2, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater$1;-><init>(Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method
