.class public final Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;
.super Ljava/lang/Exception;
.source "AnnotationConversionException.java"


# instance fields
.field private final error:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private final httpStatusCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;I)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;I)V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", httpStatusCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput-object p3, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;->error:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 32
    iput p4, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;->httpStatusCode:I

    return-void
.end method


# virtual methods
.method public getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;->error:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method
