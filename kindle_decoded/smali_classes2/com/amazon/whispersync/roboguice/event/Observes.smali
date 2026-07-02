.class public interface abstract annotation Lcom/amazon/whispersync/roboguice/event/Observes;
.super Ljava/lang/Object;
.source "Observes.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/roboguice/event/Observes;
        value = .enum Lcom/amazon/whispersync/roboguice/event/EventThread;->CURRENT:Lcom/amazon/whispersync/roboguice/event/EventThread;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/amazon/whispersync/roboguice/event/EventThread;
.end method
