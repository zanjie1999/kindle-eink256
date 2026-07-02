.class public Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "EnumRetrofitConverterFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method public static create()Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;
    .locals 1

    .line 36
    new-instance v0, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;

    invoke-direct {v0}, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method getSerializedNameValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-class v0, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/google/gson/annotations/SerializedName;

    invoke-interface {p1}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    new-instance p1, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory$1;

    invoke-direct {p1, p0}, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory$1;-><init>(Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
