.class public final Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;
.super Ljava/lang/Object;
.source "InBookAaMenuFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;,
        Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInBookAaMenuFastMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InBookAaMenuFastMetrics.kt\ncom/amazon/startactions/metrics/InBookAaMenuFastMetrics\n*L\n1#1,49:1\n*E\n"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final SCHEMA_NAME:Ljava/lang/String; = "reader_aa_settings_v1"

.field private static final SCHEMA_VERSION:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;

    invoke-direct {v0}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;-><init>()V

    .line 12
    const-class v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reader_aa_settings_v1"

    .line 14
    sput-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;->SCHEMA_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 3

    const-string/jumbo v0, "settingName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "preValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settingName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "modifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p3}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSnapShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;->SCHEMA_NAME:Ljava/lang/String;

    sget v2, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;->SCHEMA_VERSION:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->SETTING:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {v2}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 42
    sget-object p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->PRE_VALUE:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 43
    sget-object p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->NEW_VALUE:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 44
    sget-object p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->MODIFIER:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 45
    sget-object p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->IS_SNAPSHOT:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 46
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method
