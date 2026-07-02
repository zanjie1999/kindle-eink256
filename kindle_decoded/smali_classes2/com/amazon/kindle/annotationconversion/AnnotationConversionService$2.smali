.class Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$2;
.super Ljava/lang/Object;
.source "AnnotationConversionService.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->convertNextBatch(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$responseHolder:Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;)V
    .locals 0

    .line 126
    iput-object p2, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$2;->val$responseHolder:Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$2;->val$responseHolder:Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;

    iput-object p1, v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;->value:Ljava/lang/Object;

    return-void
.end method
