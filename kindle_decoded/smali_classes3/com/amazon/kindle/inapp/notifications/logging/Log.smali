.class public final Lcom/amazon/kindle/inapp/notifications/logging/Log;
.super Ljava/lang/Object;
.source "Log.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

.field public static logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "logger"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "logger"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "logger"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "logger"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object p1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "logger"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
