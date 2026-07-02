.class public abstract Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbstractBottomSheetActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractBottomSheetActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractBottomSheetActivity.kt\ncom/amazon/kindle/ffs/view/AbstractBottomSheetActivity\n*L\n1#1,113:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.end method

.method protected abstract getLayoutId()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 64
    const-class p1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result p1

    if-eq p1, v0, :cond_3

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 68
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->parseArguments(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->showBottomsheet()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 83
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v1, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$onDestroy$1$1;->INSTANCE:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$onDestroy$1$1;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->parseArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract parseArguments(Landroid/os/Bundle;)V
.end method

.method protected abstract setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
.end method

.method protected abstract showBottomsheet()V
.end method

.method public final showErrorPopup(Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;-><init>()V

    .line 47
    sget-object v1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "showing error dialog"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PopupError"

    .line 50
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
