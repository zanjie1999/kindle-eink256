.class Lcom/amazon/kcp/application/AnnotationCache$BookData;
.super Ljava/lang/Object;
.source "AnnotationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AnnotationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookData"
.end annotation


# instance fields
.field annotationDataList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookData;->annotationDataList:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/AnnotationCache$1;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache$BookData;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyAnnotations()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookData;->annotationDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public getAnnotations()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookData;->annotationDataList:Ljava/util/Vector;

    return-object v0
.end method
