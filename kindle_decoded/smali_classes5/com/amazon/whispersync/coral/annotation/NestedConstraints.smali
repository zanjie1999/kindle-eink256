.class public interface abstract annotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
.super Ljava/lang/Object;
.source "NestedConstraints.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
        enumValues = {}
        maxLength = {}
        maxValue = {}
        minLength = {}
        minValue = {}
        pattern = {}
        required = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract enumValues()[Lcom/amazon/whispersync/coral/annotation/EnumValues;
.end method

.method public abstract maxLength()[Lcom/amazon/whispersync/coral/annotation/MaxLength;
.end method

.method public abstract maxValue()[Lcom/amazon/whispersync/coral/annotation/MaxValue;
.end method

.method public abstract minLength()[Lcom/amazon/whispersync/coral/annotation/MinLength;
.end method

.method public abstract minValue()[Lcom/amazon/whispersync/coral/annotation/MinValue;
.end method

.method public abstract pattern()[Lcom/amazon/whispersync/coral/annotation/Pattern;
.end method

.method public abstract required()[Lcom/amazon/whispersync/coral/annotation/Required;
.end method
