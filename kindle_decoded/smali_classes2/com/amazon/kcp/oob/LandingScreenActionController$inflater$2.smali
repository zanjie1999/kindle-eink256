.class final Lcom/amazon/kcp/oob/LandingScreenActionController$inflater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LandingScreenActionController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingScreenActionController;-><init>(Landroid/app/Activity;Landroid/view/Menu;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/LayoutInflater;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/LandingScreenActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$inflater$2;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/LayoutInflater;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$inflater$2;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActivity$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kcp/oob/LandingScreenActionController$inflater$2;->invoke()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
