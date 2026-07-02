.class public final Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment$CreateDelegate;
.super Ljava/lang/Object;
.source "EndOfEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndOfEpisodeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndOfEpisodeController.kt\ncom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment$CreateDelegate\n*L\n1#1,448:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment;

    invoke-direct {v1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment;-><init>()V

    .line 314
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 315
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_in_dark_mode"

    .line 316
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
