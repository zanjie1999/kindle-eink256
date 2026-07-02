.class public Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;
.super Ljava/lang/Object;
.source "WebRequestErrorDescriber.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;


# instance fields
.field private errorButtonTag:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorContext:Ljava/lang/String;

.field private errorLink:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private errorTitle:Ljava/lang/String;

.field private internalErrorDetailType:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field private shouldDisplayCDEError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentMetadataUpdate()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 139
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->getErrorTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->getErrorLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorLink:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->getErrorDisplayButtonTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 158
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorButtonTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_4
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-boolean v2, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->shouldDisplayCDEError:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorContext()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorContext:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDisplayButtonTag()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorButtonTag:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorLink()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorLink:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->internalErrorDetailType:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    return-object v0
.end method

.method public setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 1

    .line 122
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 123
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorCode:Ljava/lang/String;

    .line 124
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorMessage:Ljava/lang/String;

    .line 125
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorTitle:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorLink:Ljava/lang/String;

    .line 127
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorDisplayButtonTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorButtonTag:Ljava/lang/String;

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->shouldDisplayCDEError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->shouldDisplayCDEError:Z

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->internalErrorDetailType:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 130
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorContext()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorContext:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorContext(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorContext:Ljava/lang/String;

    return-void
.end method

.method public setErrorDisplayButtonTag(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorButtonTag:Ljava/lang/String;

    return-void
.end method

.method public setErrorLink(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorLink:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorTitle(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->errorTitle:Ljava/lang/String;

    return-void
.end method

.method public setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->internalErrorDetailType:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    return-void
.end method

.method public setShouldDisplayCDEError(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->shouldDisplayCDEError:Z

    return-void
.end method

.method public shouldDisplayCDEError()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->shouldDisplayCDEError:Z

    return v0
.end method
