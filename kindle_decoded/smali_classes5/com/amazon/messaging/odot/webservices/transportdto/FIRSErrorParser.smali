.class public final Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorParser;
.super Ljava/lang/Object;
.source "FIRSErrorParser.java"


# direct methods
.method public static parseError(Lorg/w3c/dom/Document;)Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;
    .locals 2

    .line 14
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 16
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "customer_not_found"

    .line 21
    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    goto :goto_0

    :cond_1
    const-string v0, "device_already_registered"

    .line 23
    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    goto :goto_0

    :cond_2
    const-string v0, "duplicate_account_name"

    .line 25
    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    goto :goto_0

    :cond_3
    const-string v0, "message"

    .line 27
    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;->hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 28
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    goto :goto_0

    .line 30
    :cond_4
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeUnrecognized:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    .line 33
    :goto_0
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;

    invoke-direct {v0, p0}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;-><init>(Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;)V

    return-object v0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
