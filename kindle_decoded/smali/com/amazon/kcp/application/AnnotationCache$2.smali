.class Lcom/amazon/kcp/application/AnnotationCache$2;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


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

    .line 456
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$2;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$2;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-static {v0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->access$202(Lcom/amazon/kcp/application/AnnotationCache;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
