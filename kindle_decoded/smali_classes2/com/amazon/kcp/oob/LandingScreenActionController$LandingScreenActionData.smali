.class public final Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;
.super Ljava/lang/Object;
.source "LandingScreenActionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/LandingScreenActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LandingScreenActionData"
.end annotation


# instance fields
.field private final badgeText:Ljava/lang/String;

.field private final id:I

.field private final image:Landroid/graphics/drawable/Drawable;

.field private final isVisible:Z

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final priority:I

.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->id:I

    .line 133
    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->isVisible:Z

    .line 134
    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->priority:I

    .line 135
    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActivity$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action.getText(activity, actionContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->title:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActivity$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->image:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActivity$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getBadgeText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->badgeText:Ljava/lang/String;

    .line 138
    new-instance p1, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData$onClickListener$1;-><init>(Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;)V

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final getBadgeText()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->badgeText:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->id:I

    return v0
.end method

.method public final getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->priority:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->isVisible:Z

    return v0
.end method
