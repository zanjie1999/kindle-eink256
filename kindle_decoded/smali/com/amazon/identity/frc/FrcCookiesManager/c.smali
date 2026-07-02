.class public final Lcom/amazon/identity/frc/FrcCookiesManager/c;
.super Ljava/lang/Object;
.source "TelephonyManagerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.frc.FrcCookiesManager.c"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "phone"

    .line 1024
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1028
    sget-object p0, Lcom/amazon/identity/frc/FrcCookiesManager/c;->TAG:Ljava/lang/String;

    const-string v1, "TelephonyManager returned is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
