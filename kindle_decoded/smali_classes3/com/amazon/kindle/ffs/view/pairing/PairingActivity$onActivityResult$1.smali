.class final Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;
.super Ljava/lang/Object;
.source "PairingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    new-instance v1, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1$1;-><init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
