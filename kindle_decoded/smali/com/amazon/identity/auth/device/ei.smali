.class public Lcom/amazon/identity/auth/device/ei;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private ls:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "phone"

    .line 15
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ei;->ls:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public dX()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ei;->ls:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
