.class final Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HighlightActionMetricRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
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
    value = "SMAP\nHighlightActionMetricRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HighlightActionMetricRecorder.kt\ncom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1#2:141\n*E\n"
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

.field final synthetic $color:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;

.field final synthetic $endPosition:Ljava/lang/Integer;

.field final synthetic $entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

.field final synthetic $highlightMenuSetting:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;

.field final synthetic $starred:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;

.field final synthetic $startPosition:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$action:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$startPosition:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$endPosition:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$starred:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;

    iput-object p7, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$highlightMenuSetting:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;

    iput-object p8, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$color:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->ACTION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$action:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->ENTRY_POINT:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$startPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->START_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    invoke-static {v1, p1, v2, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$endPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->END_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    invoke-static {v1, p1, v2, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->STARRED:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$starred:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->HIGHLIGHT_MENU_SETTING:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$highlightMenuSetting:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->COLOR:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->$color:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
