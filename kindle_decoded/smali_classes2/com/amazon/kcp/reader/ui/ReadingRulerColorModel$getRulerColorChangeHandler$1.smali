.class final Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerColorModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel;->getRulerColorChangeHandler()Lkotlin/jvm/functions/Function1;
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
.field public static final INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;

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

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel$getRulerColorChangeHandler$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "settings"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 18
    :pswitch_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->GREEN:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    goto :goto_0

    .line 17
    :pswitch_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->PURPLE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    goto :goto_0

    .line 16
    :pswitch_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->ORANGE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->YELLOW:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->RED:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    goto :goto_0

    .line 13
    :pswitch_5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->BLUE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->GRAY:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
