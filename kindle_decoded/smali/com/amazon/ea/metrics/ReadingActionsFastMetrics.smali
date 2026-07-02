.class public Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;
.super Ljava/lang/Object;
.source "ReadingActionsFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;,
        Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;,
        Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;,
        Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;,
        Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.metrics.ReadingActionsFastMetrics"

.field private static final UNPROPERLY_FINISHED_CONTAINER:J = 0x1L

.field private static containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V
    .locals 0

    .line 267
    invoke-interface {p1}, Lcom/amazon/ea/metrics/WidgetActions;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V
    .locals 1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/ea/metrics/WidgetActions;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->getSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static emit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "emit"

    .line 275
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    if-nez v0, :cond_0

    .line 277
    sget-object p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    const-string p1, "containerMetric was null, can\'t emit container metrics"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "containerMetric.null"

    .line 278
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    return-void

    .line 281
    :cond_0
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v2, "reading_actions_widgets"

    .line 283
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 284
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->WIDGET_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->access$100(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 285
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->WIDGET_NAME:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->access$100(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 286
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->CONTAINER_UUID:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->access$100(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    invoke-static {v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$000(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 289
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "metrics for widget recorded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 292
    sget-object p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    const-string v0, "Reading Actions FastMetrics threw an exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p0, "record.error"

    .line 293
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    sget-object p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Reading Actions FastMetrics error, fastmetrics not available"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "fastMetrics.null"

    .line 297
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    .line 299
    :goto_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void
.end method

.method public static finishContainerMetrics()V
    .locals 4

    const-string v0, "finishContainerMetrics"

    .line 228
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    const-string v1, "containerMetric was null, can\'t emit container metrics"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "containerMetric.null"

    .line 231
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;-><init>(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;J)V

    const/4 v0, 0x0

    .line 234
    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    .line 235
    invoke-static {v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->finishContainerMetrics(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)V

    .line 238
    :goto_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void
.end method

.method private static finishContainerMetrics(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)V
    .locals 5

    .line 242
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "reading_actions_containers"

    .line 244
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 245
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->CONTAINER_UUID:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->access$100(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$000(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 246
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DISPLAY_START:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$300(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 247
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DISPLAY_END:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$400(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 248
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->READING_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$500(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 249
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->READING_ACTION_CONTAINER:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$600(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 250
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->ENTRY_POINT:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$700(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 251
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DEVICE_STATUS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$800(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Lcom/amazon/ea/metrics/DeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ea/metrics/DeviceStatus;->getDeviceStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 254
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "metrics container with UUID recorded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$000(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and device status is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$800(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Lcom/amazon/ea/metrics/DeviceStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 257
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    const-string v1, "Reading Actions FastMetrics threw an exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p0, "record.error"

    .line 258
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    sget-object p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    const-string v0, "Reading Actions FastMetrics error, fastmetrics not available"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "fastMetrics.null"

    .line 262
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized startContainerMetrics(Ljava/lang/String;Lcom/amazon/ea/metrics/DeviceStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "startContainerMetrics"

    .line 187
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 189
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    if-eqz v2, :cond_0

    .line 190
    new-instance v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    const-wide/16 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;-><init>(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;J)V

    .line 192
    :cond_0
    new-instance v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;-><init>(Ljava/lang/String;Lcom/amazon/ea/metrics/DeviceStatus;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "metrics container with UUID started: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    invoke-static {p1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;->access$000(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 197
    sget-object p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "containerMetric was not null: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->containerMetric:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "containerMetric.notNull"

    .line 198
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->finishContainerMetrics(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerMetric;)V

    .line 201
    :cond_1
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized startContainerMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcom/amazon/ea/metrics/DeviceStatus;->CONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

    goto :goto_0

    .line 219
    :cond_0
    sget-object v1, Lcom/amazon/ea/metrics/DeviceStatus;->DISCONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

    .line 221
    :goto_0
    invoke-static {p0, v1, p1, p2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->startContainerMetrics(Ljava/lang/String;Lcom/amazon/ea/metrics/DeviceStatus;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
