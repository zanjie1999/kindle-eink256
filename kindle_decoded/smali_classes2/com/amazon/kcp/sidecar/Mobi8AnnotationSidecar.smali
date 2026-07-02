.class public Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;
.super Ljava/lang/Object;
.source "Mobi8AnnotationSidecar.java"


# instance fields
.field private acr:Ljava/lang/String;

.field private annotationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;"
        }
    .end annotation
.end field

.field private crp:I

.field private guid:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private lastReadPosition:I

.field private md5:Ljava/lang/String;

.field private mrpr:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->md5:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->key:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->type:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->guid:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->acr:Ljava/lang/String;

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->lastReadPosition:I

    .line 29
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->mrpr:I

    .line 30
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->crp:I

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->annotationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAcr()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->acr:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnotationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->annotationList:Ljava/util/List;

    return-object v0
.end method

.method public getCrp()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->crp:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReadPosition()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->lastReadPosition:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMrpr()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->mrpr:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAnnotationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->annotationList:Ljava/util/List;

    return-void
.end method

.method public setCrp(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->crp:I

    return-void
.end method

.method public setLastReadPosition(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->lastReadPosition:I

    return-void
.end method

.method public setMrpr(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->mrpr:I

    return-void
.end method
