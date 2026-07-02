.class public final Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel;
.super Ljava/lang/Object;
.source "ReadingRulerColorModel.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentColorIndex()I
    .locals 2

    .line 25
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerColorType()Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    move-result-object v0

    const-string v1, "Utils.getFactory().userS\u2026ler.readingRulerColorType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkRulerColorTypeToIndex(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)I

    move-result v0

    return v0
.end method

.method public final getRulerColorChangeHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;

    return-object v0
.end method
