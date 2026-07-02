.class Lcom/amazon/kcp/application/AnnotationCache$23;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AnnotationCache;->deserialize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AnnotationCache;

.field final synthetic val$crp:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$23;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$23;->val$crp:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$23;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache;->access$400(Lcom/amazon/kcp/application/AnnotationCache;)Lcom/amazon/kcp/application/AnnotationCache$BookData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookData;->getAnnotations()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$23;->val$crp:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    .line 670
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->cloneModel()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
