.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate;
.super Lcom/amazon/whispersync/AmazonDevice/Common/IWebRequestEngineDelegate;
.source "StandardWebRequestEngineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;
    }
.end annotation


# instance fields
.field private final mCaller:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebRequestEngineDelegate;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate;->mCaller:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;

    return-void
.end method


# virtual methods
.method public issueWebRequest(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngine;Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate;->mCaller:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;

    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;

    invoke-virtual {p2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result v1

    invoke-direct {v0, p3, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;Z)V

    invoke-interface {p1, p2, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;->call()V

    return-void
.end method
