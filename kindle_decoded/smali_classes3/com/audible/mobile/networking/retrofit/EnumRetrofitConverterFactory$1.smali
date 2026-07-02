.class Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory$1;
.super Ljava/lang/Object;
.source "EnumRetrofitConverterFactory.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;


# direct methods
.method constructor <init>(Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory$1;->this$0:Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory$1;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory$1;->this$0:Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;->getSerializedNameValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
