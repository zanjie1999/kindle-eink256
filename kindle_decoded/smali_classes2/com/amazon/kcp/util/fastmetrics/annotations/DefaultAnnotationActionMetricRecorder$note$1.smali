.class final Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;

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

    .line 39
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;->invoke(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
