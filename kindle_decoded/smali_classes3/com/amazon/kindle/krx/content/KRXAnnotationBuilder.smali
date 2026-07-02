.class public Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;
.super Ljava/lang/Object;
.source "KRXAnnotationBuilder.java"


# instance fields
.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private type:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

.field private userText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->type:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->type:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->userText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->metadata:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public buildAnnotation()Lcom/amazon/kindle/krx/content/KRXIAnnotation;
    .locals 1

    .line 89
    new-instance v0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder$1;-><init>(Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;)V

    return-object v0
.end method

.method public setEndPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method public setMetadata(Ljava/util/Map;)Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public setStartPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method public setUserNote(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->userText:Ljava/lang/String;

    return-object p0
.end method
