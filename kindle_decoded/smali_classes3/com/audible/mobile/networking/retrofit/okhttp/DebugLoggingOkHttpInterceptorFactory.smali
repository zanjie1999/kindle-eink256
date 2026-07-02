.class public final Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;
.super Ljava/lang/Object;
.source "DebugLoggingOkHttpInterceptorFactory.kt"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Lokhttp3/Interceptor;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;

.field private static final logger$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->Companion:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;

    .line 24
    invoke-static {v0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->logger$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Interceptor;
    .locals 2

    .line 14
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    sget-object v1, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;->INSTANCE:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$get$interceptor$1;

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 15
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method
