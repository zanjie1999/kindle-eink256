.class public interface abstract Lcom/amazon/kindle/krx/content/KRXIAnnotation;
.super Ljava/lang/Object;
.source "KRXIAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    }
.end annotation


# virtual methods
.method public abstract getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
.end method

.method public abstract getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getBookText()Ljava/lang/String;
.end method

.method public abstract getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getMetadata()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getUserText()Ljava/lang/String;
.end method
