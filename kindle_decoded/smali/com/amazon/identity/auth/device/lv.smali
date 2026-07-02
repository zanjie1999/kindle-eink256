.class public final Lcom/amazon/identity/auth/device/lv;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.lv"


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

.method public static e(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lu;
    .locals 3

    .line 19
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 20
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleWebServicesError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "FileNotFoundError"

    .line 28
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeFileNotFound:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto/16 :goto_0

    :cond_1
    const-string v0, "DeviceAlreadyRegistered"

    .line 32
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_2
    const-string v0, "CredentialsRequired"

    .line 36
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeCredentialsRequired:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_3
    const-string v0, "InvalidAsin"

    .line 40
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidAsin:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_4
    const-string v0, "InvalidOrder"

    .line 44
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidOrder:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_5
    const-string v0, "InsufficientFunds"

    .line 48
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInsufficientFunds:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_6
    const-string v0, "UnknownError"

    .line 52
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnknownError:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_7
    const-string v0, "UnBuyError"

    .line 56
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnbuyError:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_8
    const-string v0, "DuplicateDeviceName"

    .line 60
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    :cond_9
    const-string v0, "InternalError"

    .line 64
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mi;->c(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 66
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    goto :goto_0

    .line 70
    :cond_a
    sget-object p0, Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    .line 72
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/lv;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KindleWebserviceError type="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/amazon/identity/auth/device/lu;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/lu;-><init>(Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;)V

    return-object v0

    :cond_b
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
