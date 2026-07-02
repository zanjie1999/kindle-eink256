.class public final Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClientProvider.kt\ncom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleExpiredCertificate(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;Ljava/security/cert/X509Certificate;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;->handleExpiredCertificate(Ljava/security/cert/X509Certificate;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    return-void
.end method

.method public static final synthetic access$processCustomTrustStore(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/webservices/X509CustomTrust;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;->processCustomTrustStore(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object p0

    return-object p0
.end method

.method private final handleExpiredCertificate(Ljava/security/cert/X509Certificate;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 4

    .line 80
    invoke-static {}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 81
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    const-string v3, "cert.subjectX500Principal"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUBJECT_PRINCIPLE_NAME"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 82
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CA_SERIAL_NUMBER_HEX"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 83
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CA_EXPIRATION"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 80
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "EXPIRED_CERTIFICATE_AUTHORITY"

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final processCustomTrustStore(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/webservices/X509CustomTrust;
    .locals 2

    .line 61
    invoke-static {}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "metricPayload"

    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    const-string p1, "CERTIFICATES_PROCESSING_TIME"

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProviderKt;->access$withTimingEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    check-cast p1, Lcom/amazon/kindle/webservices/X509CustomTrust;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-object p1
.end method
