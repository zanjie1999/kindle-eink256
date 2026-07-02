.class final Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;
.super Ljava/lang/Object;
.source "BottomSheetController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/BottomSheetController;->showBottomSheet(Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $config:Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;

.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic this$0:Lcom/amazon/falkor/BottomSheetController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/BottomSheetController;Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->this$0:Lcom/amazon/falkor/BottomSheetController;

    iput-object p2, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->$config:Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;

    iput-object p3, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->this$0:Lcom/amazon/falkor/BottomSheetController;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    .line 139
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->$config:Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;->present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 141
    iget-object v2, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->this$0:Lcom/amazon/falkor/BottomSheetController;

    new-instance v3, Lcom/amazon/falkor/CurrentBottomSheet;

    iget-object v4, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v4, v0}, Lcom/amazon/falkor/CurrentBottomSheet;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;)V

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/BottomSheetController;->setCurrentBottomSheet(Lcom/amazon/falkor/CurrentBottomSheet;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->$fragment:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/amazon/falkor/BaseWebViewFragment;

    if-eqz v2, :cond_3

    .line 144
    check-cast v0, Lcom/amazon/falkor/BaseWebViewFragment;

    iget-object v2, p0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;->this$0:Lcom/amazon/falkor/BottomSheetController;

    invoke-virtual {v2}, Lcom/amazon/falkor/BottomSheetController;->getCurrentBottomSheet()Lcom/amazon/falkor/CurrentBottomSheet;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/falkor/CurrentBottomSheet;->getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/falkor/BaseWebViewFragment;->setActions(Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;)V

    :cond_3
    return-void
.end method
