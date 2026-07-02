.class public final Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;
.super Ljava/lang/Object;
.source "SeriesBindingDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;

.field private static final authManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;

    .line 9
    sget-object v0, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils$authManager$2;->INSTANCE:Lcom/amazon/kcp/debug/SeriesBindingDebugUtils$authManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->authManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isInJapan()Z
    .locals 2

    .line 12
    sget-object v0, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->getAuthManager$KindleReaderLibrary_release()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getAuthManager$KindleReaderLibrary_release()Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAuthenticationManager;

    return-object v0
.end method
