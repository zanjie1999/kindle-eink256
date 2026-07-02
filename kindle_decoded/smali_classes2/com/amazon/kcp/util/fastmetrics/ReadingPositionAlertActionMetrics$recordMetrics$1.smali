.class final Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingPositionAlertActionMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
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
.field final synthetic $actionType:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field final synthetic $alertType:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

.field final synthetic $endPosition:Ljava/lang/Integer;

.field final synthetic $lprPosition:Ljava/lang/Integer;

.field final synthetic $sheetState:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

.field final synthetic $startPosition:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$actionType:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$alertType:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$sheetState:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$startPosition:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$endPosition:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$lprPosition:Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->ACTION_ID:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$actionType:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 50
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->ALERT_TYPE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$alertType:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$sheetState:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->NOT_APPLICABLE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->SHEET_STATE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$sheetState:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 52
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->START_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$startPosition:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 53
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->END_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$endPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 54
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->LPR_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->$lprPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addInteger(FieldKey.LPR_\u2026N.value, lprPosition?: 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
