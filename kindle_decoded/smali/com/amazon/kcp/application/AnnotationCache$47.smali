.class Lcom/amazon/kcp/application/AnnotationCache$47;
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

    .line 932
    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$47;->val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$47;->val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setState(Ljava/lang/String;)V

    return-void
.end method
