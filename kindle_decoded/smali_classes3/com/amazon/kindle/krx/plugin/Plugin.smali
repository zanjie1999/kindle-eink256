.class public interface abstract annotation Lcom/amazon/kindle/krx/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/kindle/krx/plugin/Plugin;
        build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
        entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
        maxApi = 0x7fffffff
        minApi = 0x8
        role = .enum Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
        roles = {
            .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;,
            .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
        }
        scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
        target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/plugin/Plugin$Role;,
        Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;,
        Lcom/amazon/kindle/krx/plugin/Plugin$Scope;,
        Lcom/amazon/kindle/krx/plugin/Plugin$Entry;,
        Lcom/amazon/kindle/krx/plugin/Plugin$Target;,
        Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/amazon/kindle/krx/plugin/Plugin$Build;
.end method

.method public abstract entry()Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
.end method

.method public abstract maxApi()I
.end method

.method public abstract minApi()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract role()Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
.end method

.method public abstract roles()[Lcom/amazon/kindle/krx/plugin/Plugin$Role;
.end method

.method public abstract scope()Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end method

.method public abstract target()Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end method
