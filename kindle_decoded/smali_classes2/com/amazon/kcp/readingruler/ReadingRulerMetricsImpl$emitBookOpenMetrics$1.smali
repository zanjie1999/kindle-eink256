.class final Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerMetricsImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->emitBookOpenMetrics(Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    .line 53
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->PREV_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 55
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->NEW_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_0

    .line 57
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 58
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->PREV_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 59
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->NEW_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->PREV_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 63
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->NEW_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 66
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->MODIFIER:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookOpen"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 67
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->IS_SNAPSHOT:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addBoolean(FieldKey.IS_SNAPSHOT.value, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
