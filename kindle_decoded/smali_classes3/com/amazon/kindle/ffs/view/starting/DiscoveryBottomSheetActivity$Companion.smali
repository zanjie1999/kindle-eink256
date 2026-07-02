.class public final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;
.super Ljava/lang/Object;
.source "DiscoveryBottomSheetActivity.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentWithArguments(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;I)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "discoveryBottomSheet:discoveryKey"

    .line 39
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "discoveryBottomSheet:statusKey"

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "discoveryBottomSheet"

    .line 41
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method
