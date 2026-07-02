.class public interface abstract Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;
.super Ljava/lang/Object;
.source "IAnnotationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$AttributeType;,
        Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$IAttributeType;
    }
.end annotation


# virtual methods
.method public abstract getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
.end method

.method public abstract getAttribute(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem$IAttributeType;)Ljava/lang/Object;
.end method

.method public abstract getContextMenuItems()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayText()Ljava/lang/String;
.end method

.method public abstract getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract isMutable()Z
.end method
