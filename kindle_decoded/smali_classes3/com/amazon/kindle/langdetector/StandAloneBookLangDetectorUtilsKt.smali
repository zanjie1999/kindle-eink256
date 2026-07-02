.class public final Lcom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtilsKt;
.super Ljava/lang/Object;
.source "StandAloneBookLangDetectorUtils.kt"


# static fields
.field private static final REQ_LIBS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "icudataamzn"

    const-string v1, "icuucamzn"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtilsKt;->REQ_LIBS:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getREQ_LIBS$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/langdetector/StandAloneBookLangDetectorUtilsKt;->REQ_LIBS:Ljava/util/List;

    return-object v0
.end method
