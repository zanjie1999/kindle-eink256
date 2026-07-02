.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;
.super Ljava/lang/Object;
.source "NotesActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;
    }
.end annotation


# instance fields
.field private final entryPointReader:Ljava/lang/String;

.field private final recordingFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingFunction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->recordingFunction:Lkotlin/jvm/functions/Function3;

    const-string p1, "Reader"

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->entryPointReader:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEntryPointReader$p(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->entryPointReader:Ljava/lang/String;

    return-object p0
.end method

.method private final add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 80
    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string p2, "addInteger(key.value, value)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 79
    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Key;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string p2, "addString(key.value, value)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final record(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 10

    .line 67
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;->from(Z)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    move-result-object v7

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->recordingFunction:Lkotlin/jvm/functions/Function3;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->NOTE_ACTION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->HIGHLIGHT_ACTION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$record$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;)V

    invoke-interface {v0, v1, v8, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public recordCreated(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->ADD:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->REMOVE:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public recordEdited(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->EDIT:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method
