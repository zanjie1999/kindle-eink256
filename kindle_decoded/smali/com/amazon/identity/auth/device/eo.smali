.class public Lcom/amazon/identity/auth/device/eo;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final lG:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "wifi"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/eo;->lG:Landroid/net/wifi/WifiManager;

    return-void
.end method
