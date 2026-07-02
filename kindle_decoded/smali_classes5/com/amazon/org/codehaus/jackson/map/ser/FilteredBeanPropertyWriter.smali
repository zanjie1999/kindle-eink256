.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.super Ljava/lang/Object;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;,
        Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructViewBased(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 18
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    return-object v0
.end method
