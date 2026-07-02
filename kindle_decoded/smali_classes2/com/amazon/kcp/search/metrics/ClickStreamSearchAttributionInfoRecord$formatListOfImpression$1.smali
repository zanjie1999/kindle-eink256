.class final Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ClickStreamSearchAttributionInfoRecord.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->formatListOfImpression(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;

    invoke-direct {v0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;->INSTANCE:Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->IMPRESSIONS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;->invoke(Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
