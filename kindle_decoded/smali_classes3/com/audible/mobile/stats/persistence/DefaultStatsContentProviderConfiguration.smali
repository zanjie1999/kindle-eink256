.class public Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;
.super Ljava/lang/Object;
.source "DefaultStatsContentProviderConfiguration.java"

# interfaces
.implements Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseContentUri()Landroid/net/Uri;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.audible.mobile.stats.persistence.provider"

    return-object v0
.end method

.method public getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;->getBaseContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
