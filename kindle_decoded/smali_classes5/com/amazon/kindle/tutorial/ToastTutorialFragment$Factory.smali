.class public final Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;
.super Ljava/lang/Object;
.source "ToastTutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/ToastTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final createToastTutorialFragment(Lcom/amazon/kindle/tutorial/model/ToastUI;)Lcom/amazon/kindle/tutorial/ToastTutorialFragment;
    .locals 3

    const-string/jumbo v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;-><init>()V

    .line 36
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
