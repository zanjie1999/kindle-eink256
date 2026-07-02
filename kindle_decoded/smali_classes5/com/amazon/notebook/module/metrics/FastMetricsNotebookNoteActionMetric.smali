.class public final Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;
.super Ljava/lang/Object;
.source "NotebookNoteActionMetric.kt"

# interfaces
.implements Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotebookNoteActionMetric.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotebookNoteActionMetric.kt\ncom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric\n*L\n1#1,82:1\n*E\n"
.end annotation


# instance fields
.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;-><init>(Lcom/amazon/kcp/application/UserSettingsController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 1

    const-string/jumbo v0, "userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 18
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string p2, "Utils.getFactory().userSettingsController"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    return-void
.end method

.method private final emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 23
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/amazon/notebook/AnnotationUtils;->isStarred(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Yes"

    goto :goto_1

    :cond_2
    const-string p1, "No"

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "On"

    goto :goto_2

    :cond_3
    const-string v2, "Off"

    .line 27
    :goto_2
    const-class v3, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v3}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v3, :cond_6

    const-string v4, "note_actions"

    const/4 v5, 0x0

    .line 29
    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v4

    const-string v5, "action"

    .line 30
    invoke-interface {v4, v5, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v5, "entry_point"

    .line 31
    invoke-interface {v4, v5, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string/jumbo v0, "start_position"

    invoke-interface {v4, v0, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_4
    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "end_position"

    invoke-interface {v4, v0, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_5
    const-string/jumbo p3, "starred"

    .line 34
    invoke-interface {v4, p3, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "highlight_menu_setting"

    .line 35
    invoke-interface {v4, p1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 37
    invoke-interface {v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to record NotebookNoteActionMetric: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotebookNoteActionMetric"

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Add"

    const-string v1, "Notebook"

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;->emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Remove"

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;->emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordEdited(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Edit"

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;->emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
