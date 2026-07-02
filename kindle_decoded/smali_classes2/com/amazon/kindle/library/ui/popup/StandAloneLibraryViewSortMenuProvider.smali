.class public final Lcom/amazon/kindle/library/ui/popup/StandAloneLibraryViewSortMenuProvider;
.super Ljava/lang/Object;
.source "StandAloneLibraryViewSortMenuProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenuProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewSortMenu(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/kcp/library/LibraryContext;)Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewSortMenu;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p3, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewSortMenu;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewSortMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object p3
.end method
