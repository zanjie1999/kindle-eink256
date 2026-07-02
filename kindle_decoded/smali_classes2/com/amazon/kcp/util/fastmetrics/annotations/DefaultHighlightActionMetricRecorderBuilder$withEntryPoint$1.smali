.class final Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;->invoke(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
