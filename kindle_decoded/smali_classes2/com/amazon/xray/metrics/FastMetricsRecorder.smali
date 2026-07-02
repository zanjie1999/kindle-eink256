.class public final enum Lcom/amazon/xray/metrics/FastMetricsRecorder;
.super Ljava/lang/Enum;
.source "FastMetricsRecorder.java"

# interfaces
.implements Lcom/amazon/xray/metrics/MetricsRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;,
        Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;,
        Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/xray/metrics/FastMetricsRecorder;",
        ">;",
        "Lcom/amazon/xray/metrics/MetricsRecorder;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder;

.field public static final enum INSTANCE:Lcom/amazon/xray/metrics/FastMetricsRecorder;

.field private static final SCHEMA_NAME:Ljava/lang/String; = "xray_actions"

.field private static final SCHEMA_VERSION:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder;->INSTANCE:Lcom/amazon/xray/metrics/FastMetricsRecorder;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/xray/metrics/FastMetricsRecorder;

    aput-object v0, v2, v1

    .line 10
    sput-object v2, Lcom/amazon/xray/metrics/FastMetricsRecorder;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder;

    .line 13
    const-class v0, Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private getListFromType(Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;
    .locals 1

    .line 127
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$1;->$SwitchMap$com$amazon$xray$metrics$FastMetricsRecorder$EntityType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 133
    sget-object p1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ALL_ENTITIES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    return-object p1

    .line 131
    :cond_0
    sget-object p1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->TERMS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    return-object p1

    .line 129
    :cond_1
    sget-object p1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->PEOPLE_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/xray/metrics/FastMetricsRecorder;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/xray/metrics/FastMetricsRecorder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/xray/metrics/FastMetricsRecorder;

    return-object p0
.end method

.method public static values()[Lcom/amazon/xray/metrics/FastMetricsRecorder;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder;

    invoke-virtual {v0}, [Lcom/amazon/xray/metrics/FastMetricsRecorder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/xray/metrics/FastMetricsRecorder;

    return-object v0
.end method


# virtual methods
.method emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V
    .locals 3

    .line 192
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v2, "xray_actions"

    .line 194
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 195
    iget-object p1, p1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->value:Ljava/lang/String;

    const-string v2, "action"

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 196
    iget-object p1, p2, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->value:Ljava/lang/String;

    const-string p2, "entry_point"

    invoke-interface {v1, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p3, :cond_0

    .line 198
    invoke-static {p3}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->valueOf(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->value:Ljava/lang/String;

    const-string p2, "entity_type"

    invoke-interface {v1, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 199
    invoke-virtual {p3}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "entity_id"

    invoke-interface {v1, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 203
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    sget-object p2, Lcom/amazon/xray/metrics/FastMetricsRecorder;->TAG:Ljava/lang/String;

    const-string p3, "FastMetrics throws an Exception"

    invoke-static {p2, p3, p1}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    :cond_1
    sget-object p1, Lcom/amazon/xray/metrics/FastMetricsRecorder;->TAG:Ljava/lang/String;

    const-string p2, "FastMetrics not available."

    invoke-static {p1, p2}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public highlightExcerpt()V
    .locals 2

    .line 139
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->HIGHLIGHT:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V

    return-void
.end method

.method public highlightExcerpt(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 144
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->HIGHLIGHT:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public navigateToExcerpt()V
    .locals 2

    .line 159
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->GOTO:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V

    return-void
.end method

.method public navigateToExcerpt(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->GOTO:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public navigateToImage()V
    .locals 2

    .line 169
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->GOTO:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->IMAGES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V

    return-void
.end method

.method public openDescriptionUrlFromEntityDetail(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 174
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_DESCRIPTION_URL:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public openDescriptionUrlFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_DESCRIPTION_URL:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public openXrayFromChrome()V
    .locals 2

    .line 98
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->CHROME:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V

    return-void
.end method

.method public openXrayFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 103
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public openXrayInfoCard(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY_INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->SELECTION:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public selectEntityFromListOfType(Lcom/amazon/xray/model/object/Entity;I)V
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    invoke-static {p2}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->valueOf(I)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->getListFromType(Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public selectRelatedEntity()V
    .locals 2

    .line 179
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_RELATED_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V

    return-void
.end method

.method public selectRelatedEntity(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 184
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_RELATED_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public sendNegativeFeedbackFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->NEGATIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public sendPositiveFeedbackFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 113
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->POSITIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method

.method public shareExcerpt()V
    .locals 2

    .line 149
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SHARE:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;)V

    return-void
.end method

.method public shareExcerpt(Lcom/amazon/xray/model/object/Entity;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SHARE:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/xray/metrics/FastMetricsRecorder;->emit(Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method
