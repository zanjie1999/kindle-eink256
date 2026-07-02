.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;
.super Ljava/lang/Object;
.source "MapAuthModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providesMapProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
