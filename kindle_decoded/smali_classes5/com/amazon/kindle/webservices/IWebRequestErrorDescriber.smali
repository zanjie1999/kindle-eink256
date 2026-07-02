.class public interface abstract Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
.super Ljava/lang/Object;
.source "IWebRequestErrorDescriber.java"


# virtual methods
.method public abstract getContentMetadataUpdate()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
.end method

.method public abstract getErrorCode()Ljava/lang/String;
.end method

.method public abstract getErrorContext()Ljava/lang/String;
.end method

.method public abstract getErrorDisplayButtonTag()Ljava/lang/String;
.end method

.method public abstract getErrorLink()Ljava/lang/String;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getErrorTitle()Ljava/lang/String;
.end method

.method public abstract getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;
.end method

.method public abstract setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
.end method

.method public abstract setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
.end method

.method public abstract setErrorCode(Ljava/lang/String;)V
.end method

.method public abstract setErrorContext(Ljava/lang/String;)V
.end method

.method public abstract setErrorDisplayButtonTag(Ljava/lang/String;)V
.end method

.method public abstract setErrorLink(Ljava/lang/String;)V
.end method

.method public abstract setErrorMessage(Ljava/lang/String;)V
.end method

.method public abstract setErrorTitle(Ljava/lang/String;)V
.end method

.method public abstract setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V
.end method

.method public abstract setShouldDisplayCDEError(Z)V
.end method

.method public abstract shouldDisplayCDEError()Z
.end method
