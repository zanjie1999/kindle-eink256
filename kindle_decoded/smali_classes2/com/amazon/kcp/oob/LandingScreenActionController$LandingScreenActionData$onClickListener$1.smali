.class final Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;
.super Ljava/lang/Object;
.source "LandingScreenActionController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;-><init>(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    iput-object p2, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;->$action:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;->$action:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action.buttonIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;->reportNavBarTap(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;->$action:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    iget-object v0, v0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActivity$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    iget-object v1, v1, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    invoke-static {v1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->onClick(Landroid/content/Context;Ljava/lang/Object;)Z

    return-void
.end method
