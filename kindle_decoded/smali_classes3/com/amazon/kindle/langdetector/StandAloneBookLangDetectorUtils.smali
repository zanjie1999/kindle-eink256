.class public final Lcom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtils;
.super Ljava/lang/Object;
.source "StandAloneBookLangDetectorUtils.kt"

# interfaces
.implements Lcom/amazon/kindle/langdetector/BookLangDetectorUtils;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStandAloneBookLangDetectorUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandAloneBookLangDetectorUtils.kt\ncom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,19:1\n1819#2,2:20\n*E\n*S KotlinDebug\n*F\n+ 1 StandAloneBookLangDetectorUtils.kt\ncom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtils\n*L\n16#1,2:20\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadRequiredLibraries()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtilsKt;->access$getREQ_LIBS$p()Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-interface {v0, v2}, Lcom/amazon/kcp/application/INativeLibraryLoader;->loadLibraryByName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
