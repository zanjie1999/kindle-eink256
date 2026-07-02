.class public interface abstract Lcom/amazon/kindle/contentprovider/TtsBookBridge;
.super Ljava/lang/Object;
.source "TtsBookBridge.kt"


# virtual methods
.method public abstract getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
.end method

.method public abstract getPageEndPosition()I
.end method

.method public abstract getPageStartPosition()I
.end method

.method public abstract getTextBetweenPositions(II)Ljava/lang/String;
.end method

.method public abstract goToNextPage()V
.end method

.method public abstract isNextPageAvailable()Z
.end method
