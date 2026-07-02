.class public final Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorParser;
.super Ljava/lang/Object;
.source "FIRSErrorParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseError(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;
    .locals 2

    .line 15
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 17
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "customer_not_found"

    .line 23
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    goto :goto_0

    :cond_1
    const-string v0, "device_already_registered"

    .line 27
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    goto :goto_0

    :cond_2
    const-string v0, "duplicate_account_name"

    .line 31
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    goto :goto_0

    :cond_3
    const-string v0, "message"

    .line 35
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 37
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    goto :goto_0

    .line 41
    :cond_4
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    .line 44
    :goto_0
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;)V

    return-object v0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
