.class public final Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
.super Ljava/lang/Object;
.source "ConvertibleAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;
    }
.end annotation


# instance fields
.field private final endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final type:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->type:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    .line 38
    iput-object p2, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 39
    iput-object p3, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public static valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 57
    invoke-static {p0}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->access$000(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;-><init>(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong type for single position annotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "startPosition is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "type is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 83
    invoke-static {p0}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->access$000(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;-><init>(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong type for range annotation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "endPosition is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "startPosition is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "type is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->type:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertibleAnnotation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->type:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
