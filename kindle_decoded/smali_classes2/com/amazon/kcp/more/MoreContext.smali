.class public final Lcom/amazon/kcp/more/MoreContext;
.super Ljava/lang/Object;
.source "MoreContext.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/more/MoreContext;

.field private static fragment:Landroidx/fragment/app/Fragment;

.field private static libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kcp/more/MoreContext;

    invoke-direct {v0}, Lcom/amazon/kcp/more/MoreContext;-><init>()V

    sput-object v0, Lcom/amazon/kcp/more/MoreContext;->INSTANCE:Lcom/amazon/kcp/more/MoreContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/amazon/kcp/more/MoreContext;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static final setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 1

    const-string v0, "libraryFragmentClient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sput-object p0, Lcom/amazon/kcp/more/MoreContext;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method


# virtual methods
.method public final getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kcp/more/MoreContext;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
