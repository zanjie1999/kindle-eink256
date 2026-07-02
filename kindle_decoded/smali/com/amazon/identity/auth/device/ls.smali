.class public final Lcom/amazon/identity/auth/device/ls;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ls"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lr;
    .locals 3

    .line 19
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 21
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 32
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    goto :goto_0

    .line 36
    :cond_2
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 37
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    goto :goto_0

    .line 41
    :cond_3
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    goto :goto_0

    .line 45
    :cond_4
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInvalidAccountFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 46
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 48
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInvalidAccountFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    goto :goto_0

    .line 52
    :cond_5
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 54
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/ls;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FIRSError type="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/lr;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/lr;-><init>(Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;)V

    return-object v0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
