.class final Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;
.super Ljava/lang/Object;
.source "AnnotationConversionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;-><init>()V

    return-void
.end method
