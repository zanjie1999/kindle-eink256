.class public final Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProviderImpl;
.super Ljava/lang/Object;
.source "LargeLibraryRefineMenuAdapterProviderImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refineMenuAdapter(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilterStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryGroupType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineFilterLeafName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)V

    return-object v0
.end method
