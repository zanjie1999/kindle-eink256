.class public Lcom/amazon/identity/auth/device/lg;
.super Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/kcpsdk/common/WebResponseParser<",
        "Lcom/amazon/identity/auth/device/lf;",
        ">;"
    }
.end annotation


# instance fields
.field private final rG:Lcom/amazon/identity/auth/device/mh;

.field private tM:Lcom/amazon/identity/auth/device/lf;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.amazon.identity.kcpsdk.auth.RenameDeviceResponseParser"

    .line 31
    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/mh;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/mh;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/lg;->rG:Lcom/amazon/identity/auth/device/mh;

    return-void
.end method


# virtual methods
.method public a([BJ)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lg;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    return-void
.end method

.method public synthetic hh()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lg;->if()Lcom/amazon/identity/auth/device/lf;

    move-result-object v0

    return-object v0
.end method

.method public hi()V
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lg;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z

    return-void

    .line 1086
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Received a null response from the server"

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 1088
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v4, "error_code"

    .line 1093
    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v5, "text"

    .line 1094
    invoke-static {v0, v5}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1096
    invoke-static {v4}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    .line 1097
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_2

    goto :goto_1

    .line 1105
    :cond_2
    invoke-static {v4}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1109
    new-instance v0, Lcom/amazon/identity/auth/device/lf;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v5, "No response code found."

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/amazon/identity/auth/device/lf;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1119
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x2

    if-eq v5, v4, :cond_5

    const/4 v4, 0x4

    if-eq v5, v4, :cond_4

    .line 1138
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 1139
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    const/4 v5, 0x7

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    .line 1133
    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 1134
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    move-object v4, v5

    const/4 v5, 0x5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    .line 1128
    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 1129
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    move-object v4, v5

    const/4 v5, 0x3

    goto :goto_0

    .line 1122
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v6, v3

    move v5, v4

    move-object v4, v6

    .line 1143
    :goto_0
    new-instance v7, Lcom/amazon/identity/auth/device/lf;

    invoke-direct {v7, v4, v6, v5, v0}, Lcom/amazon/identity/auth/device/lf;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v7

    goto :goto_2

    :cond_7
    :goto_1
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_8

    .line 1075
    new-instance v0, Lcom/amazon/identity/auth/device/lf;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/amazon/identity/auth/device/lf;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    :cond_8
    iput-object v0, p0, Lcom/amazon/identity/auth/device/lg;->tM:Lcom/amazon/identity/auth/device/lf;

    return-void
.end method

.method public if()Lcom/amazon/identity/auth/device/lf;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lg;->tM:Lcom/amazon/identity/auth/device/lf;

    return-object v0
.end method
