.class Lcom/amazon/kcp/application/AnnotationCache$38;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AnnotationCache;->deserializeHighlight(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AnnotationCache;

.field final synthetic val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$38;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$38;->val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$38;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache;->access$400(Lcom/amazon/kcp/application/AnnotationCache;)Lcom/amazon/kcp/application/AnnotationCache$BookData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookData;->getAnnotations()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$38;->val$highlight:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    .line 862
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->cloneModel()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    move-result-object v1

    .line 861
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
