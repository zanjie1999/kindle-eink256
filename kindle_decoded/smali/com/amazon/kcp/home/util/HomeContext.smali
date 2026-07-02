.class public final Lcom/amazon/kcp/home/util/HomeContext;
.super Ljava/lang/Object;
.source "HomeContext.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

.field private static fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

.field private static libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private static final sdk$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kcp/home/util/HomeContext;

    invoke-direct {v0}, Lcom/amazon/kcp/home/util/HomeContext;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    .line 14
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext$sdk$2;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext$sdk$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/util/HomeContext;->sdk$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    return-object v0
.end method

.method public static final isHomeVisible()Z
    .locals 2

    .line 50
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final setFragment(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/amazon/kcp/home/util/HomeContext;->fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    return-void
.end method

.method public static final setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 1

    const-string v0, "libraryFragmentClient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sput-object p0, Lcom/amazon/kcp/home/util/HomeContext;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method


# virtual methods
.method public final getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->sdk$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method
