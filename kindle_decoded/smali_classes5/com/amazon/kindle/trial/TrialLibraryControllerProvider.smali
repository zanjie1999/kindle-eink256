.class public final Lcom/amazon/kindle/trial/TrialLibraryControllerProvider;
.super Ljava/lang/Object;
.source "TrialLibraryController.kt"

# interfaces
.implements Lcom/amazon/kcp/library/EmptyLibraryControllerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newController(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryActionBarHelper;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)Lcom/amazon/kcp/library/EmptyLibraryController;
    .locals 1

    const-string v0, "libraryActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionBarHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "launchStoreRunnable"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "fragmentHandler"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "emptyLibraryStringProvider"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p2, Lcom/amazon/kindle/trial/TrialLibraryController;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/amazon/kindle/trial/TrialLibraryController;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)V

    return-object p2
.end method
