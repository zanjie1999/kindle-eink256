.class final Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotesActionMetricRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotesActionMetricRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotesActionMetricRecorder.kt\ncom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

.field final synthetic $endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic $setting:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

.field final synthetic $startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$action:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    iput-object p5, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$setting:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->START_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v1, p1, v2, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->END_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v1, p1, v2, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->ACTION:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$action:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->HIGHLIGHT_MENU_SETTING:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->$setting:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->ENTRY_POINT:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->access$getEntryPointReader$p(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
