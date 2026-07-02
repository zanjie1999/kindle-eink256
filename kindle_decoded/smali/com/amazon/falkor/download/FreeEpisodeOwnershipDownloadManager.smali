.class public final Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;
.super Lcom/amazon/falkor/download/FalkorDownloadManager;
.source "FalkorDownloadManagers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/falkor/download/FalkorDownloadManager<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final onFailed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onFailed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;->onSuccess:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;->onFailed:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 119
    const-class v0, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getFreeEpisodeOwnershipUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;->onFailed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onDownloadSuccessful(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;->onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
