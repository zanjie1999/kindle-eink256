.class public Lcom/amazon/kcp/reader/Note;
.super Lcom/amazon/kcp/reader/WrappedAnnotation;
.source "Note.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/reader/WrappedAnnotation;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kcp/reader/Note;",
        ">;"
    }
.end annotation


# static fields
.field public static final SPINNER:Lcom/amazon/kcp/reader/Note;

.field private static final comparator:Lcom/amazon/kcp/reader/AnnotationComparator;


# instance fields
.field private annotationIndex:I

.field public final iconDrawable:Landroid/graphics/drawable/Drawable;

.field public final imageResourceId:I

.field public final position:I

.field public final text:Ljava/lang/String;

.field public final typeTextResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/Note;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/Note;-><init>(ILcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    sput-object v0, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/AnnotationComparator;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/AnnotationComparator;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/Note;->comparator:Lcom/amazon/kcp/reader/AnnotationComparator;

    return-void
.end method

.method public constructor <init>(ILcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    move v3, v0

    :goto_0
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->menu_bookmark:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->notes_bookmark:I

    const-string v5, ""

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;I)V

    .line 34
    iput p1, p0, Lcom/amazon/kcp/reader/Note;->annotationIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/amazon/kcp/reader/Note;->annotationIndex:I

    .line 44
    iput p2, p0, Lcom/amazon/kcp/reader/Note;->position:I

    .line 45
    iput p3, p0, Lcom/amazon/kcp/reader/Note;->imageResourceId:I

    .line 46
    iput-object p4, p0, Lcom/amazon/kcp/reader/Note;->text:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/amazon/kcp/reader/Note;->typeTextResourceId:I

    .line 48
    iput-object p6, p0, Lcom/amazon/kcp/reader/Note;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v6, p3

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILjava/lang/String;I)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    move v3, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kcp/reader/Note;)I
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 92
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v2

    .line 93
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v3

    .line 94
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v0

    .line 95
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Note;->getShortEnd()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result v4

    rsub-int v4, v4, 0x3ff

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getShortEnd()I

    move-result v5

    invoke-static {v5}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result v5

    rsub-int v5, v5, 0x3ff

    if-eq v2, v3, :cond_0

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-eq v4, v5, :cond_1

    sub-int v2, v4, v5

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    sub-int v2, v0, v1

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/amazon/kcp/reader/Note;->comparator:Lcom/amazon/kcp/reader/AnnotationComparator;

    .line 102
    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/reader/AnnotationComparator;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result v2

    :goto_0
    return v2

    .line 104
    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/Note;->comparator:Lcom/amazon/kcp/reader/AnnotationComparator;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/reader/AnnotationComparator;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/Note;->compareTo(Lcom/amazon/kcp/reader/Note;)I

    move-result p1

    return p1
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 134
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget v1, p0, Lcom/amazon/kcp/reader/Note;->position:I

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/Note;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 140
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget v1, p0, Lcom/amazon/kcp/reader/Note;->position:I

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getShortEnd()I
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 154
    iget v0, p0, Lcom/amazon/kcp/reader/Note;->position:I

    return v0

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0
.end method

.method public isExportableToEmail()Z
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isExportableToFlashcards()Z
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
