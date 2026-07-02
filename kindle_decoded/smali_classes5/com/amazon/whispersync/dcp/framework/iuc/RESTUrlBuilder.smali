.class public Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;
.super Ljava/lang/Object;
.source "RESTUrlBuilder.java"


# instance fields
.field private mMetricNameGeneratorProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsUriBuilder:Landroid/net/Uri$Builder;

.field private final mUriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    .line 16
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricsUriBuilder:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public appendItem(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricsUriBuilder:Landroid/net/Uri$Builder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public appendResourceCollection(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricsUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public encodedAuthority(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricsUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public getMetricsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricNameGeneratorProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;

    .line 59
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricsUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;->generateMetricNameFromNonRestUrl(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public scheme(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/RESTUrlBuilder;->mMetricsUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method
