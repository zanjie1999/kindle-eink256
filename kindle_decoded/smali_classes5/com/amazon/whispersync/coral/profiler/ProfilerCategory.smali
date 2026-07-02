.class public interface abstract annotation Lcom/amazon/whispersync/coral/profiler/ProfilerCategory;
.super Ljava/lang/Object;
.source "ProfilerCategory.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/coral/profiler/ProfilerCategory;
        value = "Other"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CORAL_ACTIVITY:Ljava/lang/String; = "CoralActivity"

.field public static final CORAL_FRAMEWORK:Ljava/lang/String; = "CoralFramework"

.field public static final OTHER:Ljava/lang/String; = "Other"

.field public static final SHARED_FRAMEWORK:Ljava/lang/String; = "SharedFramework"

.field public static final UNKNOWN:Ljava/lang/String; = "?"


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
