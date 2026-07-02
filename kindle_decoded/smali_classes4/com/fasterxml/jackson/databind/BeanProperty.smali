.class public interface abstract Lcom/fasterxml/jackson/databind/BeanProperty;
.super Ljava/lang/Object;
.source "BeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>()V

    .line 35
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method


# virtual methods
.method public abstract findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation
.end method

.method public abstract findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation
.end method

.method public abstract getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end method

.method public abstract getType()Lcom/fasterxml/jackson/databind/JavaType;
.end method
