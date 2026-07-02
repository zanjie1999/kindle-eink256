.class public final Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;
.super Ljava/lang/Object;
.source "FamilySharingActionButtonProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->createFSActionButton(I)Lcom/amazon/kindle/krx/ui/IActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $buttonText:I

.field final synthetic this$0:Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;

    iput p2, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->$buttonText:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    sget v0, Lcom/amazon/kcp/profiles/R$id;->family_sharing:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;

    invoke-static {p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->access$getActivityProvider$p(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ActivityProvider;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->$buttonText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "activity.getString(buttonText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 38
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ComponentStatus;"
        }
    .end annotation

    .line 49
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->onClick(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;

    invoke-static {p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->access$getNetworkService$p(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;)Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    new-instance p1, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;

    invoke-direct {p1}, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;

    invoke-static {v0}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->access$getActivityProvider$p(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ActivityProvider;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    const-class v1, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
