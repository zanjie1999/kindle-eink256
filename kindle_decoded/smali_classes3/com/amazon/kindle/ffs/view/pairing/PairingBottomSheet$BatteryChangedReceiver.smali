.class public final Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PairingBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatteryChangedReceiver"
.end annotation


# instance fields
.field private pairingBottomSheet:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V
    .locals 1

    const-string v0, "pairingBottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$BatteryChangedReceiver;->pairingBottomSheet:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$BatteryChangedReceiver;->pairingBottomSheet:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-static {p1, p2}, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;->access$updateBatteryCondition(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
