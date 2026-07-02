.class final Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;
.super Ljava/lang/Object;
.source "DebugLoggingOkHttpInterceptorFactory.kt"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;

    invoke-direct {v0}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;->INSTANCE:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->Companion:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;

    invoke-static {v0}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;->access$getLogger$p(Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method
