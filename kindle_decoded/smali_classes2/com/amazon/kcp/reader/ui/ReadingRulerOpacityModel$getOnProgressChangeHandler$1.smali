.class final Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel$getOnProgressChangeHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerOpacityModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->getOnProgressChangeHandler()Lkotlin/jvm/functions/Function1;
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


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel$getOnProgressChangeHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel$getOnProgressChangeHandler$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel$getOnProgressChangeHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->access$convertProgressToOpacityValue(Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;I)F

    move-result v0

    .line 23
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    const-string v2, "Utils.getFactory().userSettingsController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerOpacity(F)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RR opacity changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
