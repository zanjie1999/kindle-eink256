.class public final Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall$Factory;
.super Ljava/lang/Object;
.source "InstrumentedWebserviceCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;
    .locals 2

    .line 45
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;

    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;

    invoke-direct {v1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result p2

    invoke-direct {v0, v1, p3, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;Z)V

    .line 50
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;

    const/4 p3, 0x0

    invoke-direct {p2, p1, v0, p4, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall$1;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object p2
.end method
