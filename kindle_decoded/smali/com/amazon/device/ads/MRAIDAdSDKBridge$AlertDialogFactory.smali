.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlertDialogFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 1800
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
