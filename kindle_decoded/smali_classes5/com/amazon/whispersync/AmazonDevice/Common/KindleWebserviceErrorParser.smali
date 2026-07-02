.class public final Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorParser;
.super Ljava/lang/Object;
.source "KindleWebserviceErrorParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseError(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;
    .locals 2

    .line 15
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 16
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleWebServicesError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "FileNotFoundError"

    .line 24
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeFileNotFound:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto/16 :goto_0

    :cond_1
    const-string v0, "DeviceAlreadyRegistered"

    .line 28
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_2
    const-string v0, "CredentialsRequired"

    .line 32
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeCredentialsRequired:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_3
    const-string v0, "InvalidAsin"

    .line 36
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidAsin:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_4
    const-string v0, "InvalidOrder"

    .line 40
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidOrder:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_5
    const-string v0, "InsufficientFunds"

    .line 44
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInsufficientFunds:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_6
    const-string v0, "UnknownError"

    .line 48
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnknownError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_7
    const-string v0, "UnBuyError"

    .line 52
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnbuyError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_8
    const-string v0, "DuplicateDeviceName"

    .line 56
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_9
    const-string v0, "InternalError"

    .line 60
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 62
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInternalError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    goto :goto_0

    .line 66
    :cond_a
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 69
    :goto_0
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;)V

    return-object v0

    :cond_b
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
