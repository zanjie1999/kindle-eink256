.class public interface abstract annotation Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/OverrideMustInvoke;
.super Ljava/lang/Object;
.source "OverrideMustInvoke.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/OverrideMustInvoke;
        value = .enum Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->ANYTIME:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;
.end method
