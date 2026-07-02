.class public final Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;
.super Ljava/lang/Object;
.source "InBookAaMenuFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;,
        Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;,
        Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;-><init>()V

    .line 15
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(InBookAaMenuFastMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "Theme"

    :goto_0
    return-object p0
.end method

.method public static final reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 3

    const-string v0, "settingName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settingName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p3}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSnapShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 57
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->AA_MENU_V2_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->AA_MENU_V2_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "it.getPayloadBuilder(Fas\u2026V2_METRICS.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->SETTING:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 59
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->PRE_VALUE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 60
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->NEW_VALUE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 61
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->MODIFIER:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 62
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->IS_SNAPSHOT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 63
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method
