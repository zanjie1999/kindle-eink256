.class public interface abstract Lcom/amazon/krf/platform/KRFResourceStream;
.super Ljava/lang/Object;
.source "KRFResourceStream.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# virtual methods
.method public abstract getCurrentPosition()J
.end method

.method public abstract getDataLength()J
.end method

.method public abstract isValid()Z
.end method

.method public abstract readBytes([BJ)J
.end method

.method public abstract seekAbsolute(J)Z
.end method
