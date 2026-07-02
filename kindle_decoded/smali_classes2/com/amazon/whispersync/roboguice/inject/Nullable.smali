.class public Lcom/amazon/whispersync/roboguice/inject/Nullable;
.super Ljava/lang/Object;
.source "Nullable.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullable(Ljava/lang/reflect/Field;)Z
    .locals 5

    .line 17
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 18
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Nullable"

    invoke-static {v4, v3}, Lcom/amazon/whispersync/roboguice/util/Strings;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static notNullable(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/amazon/whispersync/roboguice/inject/Nullable;->isNullable(Ljava/lang/reflect/Field;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
