.class final Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerSizeModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel;->getRulerSizeChangeHandler()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel$getRulerSizeChangeHandler$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 3

    .line 11
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "settings"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->FIVE:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->THREE:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->ONE:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V

    :goto_0
    return-void
.end method
