.class public final Lcom/amazon/kcp/library/LibraryFragmentContext;
.super Ljava/lang/Object;
.source "LibraryFragmentContext.kt"


# static fields
.field private static fragment:Landroidx/fragment/app/Fragment;

.field private static libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/library/LibraryFragmentContext;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryFragmentContext;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/amazon/kcp/library/LibraryFragmentContext;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static final setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 1

    const-string v0, "libraryFragmentClient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sput-object p0, Lcom/amazon/kcp/library/LibraryFragmentContext;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method
