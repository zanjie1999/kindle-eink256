.class Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "AnnotationConversionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->convertNextBatch(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 116
    iput-object p3, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v0
.end method
