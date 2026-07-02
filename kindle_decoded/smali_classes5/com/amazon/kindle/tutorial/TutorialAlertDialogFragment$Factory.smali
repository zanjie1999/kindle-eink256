.class public final Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$Factory;
.super Ljava/lang/Object;
.source "TutorialAlertDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTutorialAlertFragment(Lcom/amazon/kindle/tutorial/model/AlertUI;)Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment;
    .locals 3

    const-string/jumbo v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/TutorialAlertDialogFragment;-><init>()V

    .line 29
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
