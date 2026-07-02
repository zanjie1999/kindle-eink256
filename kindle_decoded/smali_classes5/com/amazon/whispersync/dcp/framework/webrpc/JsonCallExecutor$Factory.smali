.class public Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;
.super Ljava/lang/Object;
.source "JsonCallExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addQueryParamsToUri(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 4

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 82
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "%s?%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/URIHelpers;->parse(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "%s&%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/URIHelpers;->parse(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method private constructRequestUri(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
            "TResponseType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URI;"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;->getAbsoluteURI(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;->addQueryParamsToUri(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method private getAbsoluteURI(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
            "TResponseType;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URI;"
        }
    .end annotation

    .line 65
    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/URIHelpers;->parse(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 71
    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getBaseUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public create(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestType:",
            "Ljava/lang/Object;",
            "ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
            "TResponseType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TRequestType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor<",
            "TRequestType;TResponseType;>;"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p5}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;->constructRequestUri(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/URIHelpers;->toURL(Ljava/net/URI;)Ljava/net/URL;

    move-result-object p2

    .line 49
    new-instance p5, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, p5}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object p5
.end method
