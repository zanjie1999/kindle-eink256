.class public interface abstract Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.super Ljava/lang/Object;
.source "IAnnotation.java"

# interfaces
.implements Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;
    }
.end annotation


# virtual methods
.method public abstract getBookText()Ljava/lang/String;
.end method

.method public abstract getCollectionTag()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isEqual(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
.end method

.method public abstract isMutable()Z
.end method

.method public abstract isRemovable()Z
.end method

.method public abstract setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V
.end method

.method public abstract setBookText(Ljava/lang/String;)V
.end method

.method public abstract setIsMutable(Z)V
.end method

.method public abstract setIsRemovable(Z)V
.end method

.method public abstract setMetadata(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
