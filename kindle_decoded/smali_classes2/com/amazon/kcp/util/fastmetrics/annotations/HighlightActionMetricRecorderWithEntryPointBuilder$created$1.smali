.class final synthetic Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$created$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V
    .locals 7

    const-class v3, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    const/4 v1, 0x2

    const-string v4, "recordCreated"

    const-string v5, "recordCreated(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$created$1;->invoke(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    .line 89
    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;->recordCreated(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V

    return-void
.end method
