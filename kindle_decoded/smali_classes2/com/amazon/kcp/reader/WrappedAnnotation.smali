.class public Lcom/amazon/kcp/reader/WrappedAnnotation;
.super Ljava/lang/Object;
.source "WrappedAnnotation.java"

# interfaces
.implements Lcom/amazon/kindle/model/sync/annotation/IAnnotation;


# instance fields
.field private final annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v0

    return v0
.end method

.method public getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getBookText()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionTag()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getCollectionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v0

    return v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPos()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getState()[B
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    return v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->isEqual(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result p1

    return p1
.end method

.method public isMutable()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->isMutable()Z

    move-result v0

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->isRemovable()Z

    move-result v0

    return v0
.end method

.method public setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V
    .locals 0

    return-void
.end method

.method public setBookText(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setBookText(Ljava/lang/String;)V

    return-void
.end method

.method public setIsMutable(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setIsMutable(Z)V

    return-void
.end method

.method public setIsRemovable(Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setIsRemovable(Z)V

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/WrappedAnnotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setMetadata(Ljava/util/Map;)V

    return-void
.end method
