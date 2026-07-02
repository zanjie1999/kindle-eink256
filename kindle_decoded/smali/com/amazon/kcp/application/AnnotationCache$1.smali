.class Lcom/amazon/kcp/application/AnnotationCache$1;
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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache;->access$200(Lcom/amazon/kcp/application/AnnotationCache;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AnnotationCache;->resetJournal()V

    :cond_0
    return-void
.end method
