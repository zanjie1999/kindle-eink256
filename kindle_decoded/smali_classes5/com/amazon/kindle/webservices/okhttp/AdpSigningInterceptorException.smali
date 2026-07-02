.class public final Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException;
.super Ljava/lang/RuntimeException;
.source "ADPSigningNetworkInterceptor.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
