.class final Lorg/reflections/ReflectionUtils$1;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lorg/reflections/util/UtilQueryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reflections/util/UtilQueryBuilder<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/reflections/ReflectionUtils;->SuperClass:Lorg/reflections/util/UtilQueryBuilder;

    invoke-interface {v0, p1}, Lorg/reflections/util/UtilQueryBuilder;->get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;

    move-result-object v0

    sget-object v1, Lorg/reflections/ReflectionUtils;->Interfaces:Lorg/reflections/util/UtilQueryBuilder;

    invoke-interface {v1, p1}, Lorg/reflections/util/UtilQueryBuilder;->get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reflections/util/QueryFunction;->add(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$1;->get(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method
