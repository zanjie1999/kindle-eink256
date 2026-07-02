.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;
.super Ljava/lang/Object;
.source "BottomSheetPresenterImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;
.implements Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl$Companion;
    }
.end annotation


# static fields
.field public static final BOTTOM_SHEET_PRESENTER_TAG:Ljava/lang/String; = "BottomSheetPresenter"

.field public static final Companion:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl$Companion;


# instance fields
.field private registeredActivity:Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->Companion:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "activity.supportFragmentManager.beginTransaction()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget v0, Lcom/amazon/kindle/krl/R$anim;->slide_in_bottom:I

    sget v1, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    const-string v0, "BottomSheetPresenter"

    .line 78
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final showModalFragment(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BottomSheetPresenter"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 68
    instance-of v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    if-eqz v2, :cond_0

    .line 69
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 71
    sget v2, Lcom/amazon/kindle/krl/R$style;->ModalBottomSheetDialog:I

    invoke-virtual {p2, v0, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->registeredActivity:Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->registeredActivity:Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    :cond_1
    return-void
.end method

.method public present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    return-object p1
.end method

.method public present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->registeredActivity:Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    :try_start_0
    instance-of v3, p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    if-eqz v3, :cond_0

    .line 49
    sget-object v3, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;->INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;

    check-cast p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    invoke-virtual {v3, p1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;->newInstance(Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    move-result-object p1

    .line 50
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->getLayoutId()I

    move-result p2

    invoke-direct {p0, v2, p2, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->showFragment(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 51
    :cond_0
    instance-of p2, p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    if-eqz p2, :cond_1

    .line 52
    sget-object p2, Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;->INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;

    check-cast p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;->newInstance(Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;)Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    move-result-object p1

    .line 53
    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->showModalFragment(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    new-instance p2, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;-><init>(Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;)V

    return-object p2

    :catch_0
    :cond_1
    return-object v1
.end method

.method public registerActivity(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;-><init>(Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetPresenterImpl;->registeredActivity:Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    return-void
.end method
