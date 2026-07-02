.class public final Lcom/audible/mobile/logging/PIIAwareLoggerKt;
.super Ljava/lang/Object;
.source "PIIAwareLogger.kt"


# direct methods
.method public static final piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/Lazy<",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$piiAwareLogger"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerKt$piiAwareLogger$1;

    invoke-direct {v0, p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt$piiAwareLogger$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
