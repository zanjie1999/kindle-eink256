.class public Lcom/amazon/phl/annotation/PhlAnnotation;
.super Ljava/lang/Object;
.source "PhlAnnotation.java"

# interfaces
.implements Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.annotation.PhlAnnotation"


# instance fields
.field private final displayText:Ljava/lang/String;

.field private final endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final startPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 40
    invoke-static {p2}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 41
    invoke-static {p3}, Lcom/amazon/phl/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 42
    invoke-static {p4}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Start position cannot be negative."

    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    .line 44
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    const-string v1, "Start position must come before end position."

    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 47
    iput-object p2, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 48
    iput-object p3, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->displayText:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/phl/annotation/PhlAnnotation;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 60
    :cond_1
    check-cast p1, Lcom/amazon/phl/annotation/PhlAnnotation;

    .line 61
    iget-object v2, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p1, Lcom/amazon/phl/annotation/PhlAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p1, Lcom/amazon/phl/annotation/PhlAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->displayText:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/phl/annotation/PhlAnnotation;->displayText:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/amazon/phl/annotation/PhlAnnotation;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->POPULAR_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object v0
.end method

.method public getAttribute(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$IAttributeType;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContextMenuItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->displayText:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " displayText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->displayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotation;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
