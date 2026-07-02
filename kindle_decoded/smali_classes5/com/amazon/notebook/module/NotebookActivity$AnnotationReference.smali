.class public Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;
.super Ljava/lang/Object;
.source "NotebookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationReference"
.end annotation


# instance fields
.field private final startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final type:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 488
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->type:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-void
.end method


# virtual methods
.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->type:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object v0
.end method
