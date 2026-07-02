.class public final Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;
.super Ljava/lang/Object;
.source "SampleEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSampleEpisodeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SampleEpisodeController.kt\ncom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate\n*L\n1#1,492:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    new-instance v1, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment;

    invoke-direct {v1}, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment;-><init>()V

    .line 474
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 475
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_in_dark_mode"

    .line 476
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
