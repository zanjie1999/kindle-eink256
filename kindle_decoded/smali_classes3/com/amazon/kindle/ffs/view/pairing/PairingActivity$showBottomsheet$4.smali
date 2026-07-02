.class final Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PairingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingActivity.kt\ncom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4\n*L\n1#1,153:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;->invoke(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;Ljava/lang/String;)V
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;->$context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    const/16 p2, 0xb59

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
