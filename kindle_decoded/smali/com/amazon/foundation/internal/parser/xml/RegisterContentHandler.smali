.class public Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "RegisterContentHandler.java"


# static fields
.field private static final ADP_TOKEN_NODE:Ljava/lang/String; = "adp_token"

.field private static final DEVICE_PRIVATE_KEY_NODE:Ljava/lang/String; = "device_private_key"

.field private static final KINDLE_EMAIL_ADDRESS_NODE:Ljava/lang/String; = "kindle_email_address"

.field private static final RESPONSE_NODE:Ljava/lang/String; = "response"

.field private static final STORE_AUTHORIZATION_COOKIE_NODE:Ljava/lang/String; = "store_authentication_cookie"

.field private static final USER_DEVICE_NAME_NODE:Ljava/lang/String; = "user_device_name"

.field private static final USER_NAME_NODE:Ljava/lang/String; = "name"


# instance fields
.field private resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_private_key"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setPrivateKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "adp_token"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "store_authentication_cookie"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setCookie(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "user_device_name"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setUserDeviceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "name"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "kindle_email_address"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setWhispersendEmail(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method
