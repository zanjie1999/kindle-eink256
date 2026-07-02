.class public final Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;
.super Ljava/lang/Object;
.source "DebugLoggingOkHttpInterceptorFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugLoggingOkHttpInterceptorFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugLoggingOkHttpInterceptorFactory.kt\ncom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion\n*L\n1#1,27:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;)Lorg/slf4j/Logger;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;->getLogger()Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 2

    invoke-static {}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->access$getLogger$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->Companion:Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory$Companion;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method
