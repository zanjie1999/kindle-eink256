.class Lcom/amazon/kindle/download/CdeErrorContentHandler;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "CdeErrorContentHandler.java"


# static fields
.field private static final BUTTON_TAG:Ljava/lang/String; = "Link"

.field private static final CODE_TAG:Ljava/lang/String; = "Code"

.field private static final LINK_ATTRIBUTE:Ljava/lang/String; = "href"

.field private static final MESSAGE_TAG:Ljava/lang/String; = "Message"

.field private static final TITLE_TAG:Ljava/lang/String; = "Title"


# instance fields
.field private final cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Code"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorCode(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_0

    :cond_0
    const-string v0, "Message"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Title"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Link"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorDisplayButtonTag(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "Link"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/amazon/kindle/download/CdeErrorContentHandler;->cdeErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    const-string v0, "href"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorLink(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
