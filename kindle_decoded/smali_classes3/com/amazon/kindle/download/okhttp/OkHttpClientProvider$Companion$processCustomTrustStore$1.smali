.class final Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;->processCustomTrustStore(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/webservices/X509CustomTrust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/webservices/X509CustomTrust;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClientProvider.kt\ncom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1517#2:142\n1588#2,3:143\n3024#2,10:146\n1819#2,2:156\n*E\n*S KotlinDebug\n*F\n+ 1 OkHttpClientProvider.kt\ncom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1\n*L\n65#1:142\n65#1,3:143\n67#1,10:146\n69#1,2:156\n*E\n"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;->$metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/webservices/X509CustomTrust;
    .locals 6

    .line 63
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "TimeUtils.getUtcCalendarForCurrentTime()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/amazon/kindle/webservices/X509CertificateUtilsKt;->getATS_TRUST_ROOT_CERTS()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kindle/webservices/X509CertificateUtilsKt;->getDIGICERT_TRUST_ROOT_CERTS()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 66
    iget-object v4, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;->$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/amazon/kindle/webservices/X509CertificateUtilsKt;->readX509CertificateFromRawResource(ILandroid/content/Context;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 149
    move-object v5, v4

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 67
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_2
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 69
    sget-object v3, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->Companion:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;

    iget-object v4, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;->$metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {v3, v2, v4}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;->access$handleExpiredCertificate(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;Ljava/security/cert/X509Certificate;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    goto :goto_2

    .line 71
    :cond_3
    new-instance v1, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;

    invoke-direct {v1}, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;-><init>()V

    .line 72
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->addTrustedCertificates(Ljava/util/List;)Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;

    .line 73
    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->addPlatformTrustedCertificates()Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;

    .line 74
    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/X509CustomTrust$Builder;->build()Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion$processCustomTrustStore$1;->invoke()Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object v0

    return-object v0
.end method
