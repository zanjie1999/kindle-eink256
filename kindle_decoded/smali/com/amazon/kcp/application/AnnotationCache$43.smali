.class Lcom/amazon/kcp/application/AnnotationCache$43;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AnnotationCache;->deserializeHighlight(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V
    .locals 0

    .line 901
    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$43;->val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$43;->val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setPos(Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method
