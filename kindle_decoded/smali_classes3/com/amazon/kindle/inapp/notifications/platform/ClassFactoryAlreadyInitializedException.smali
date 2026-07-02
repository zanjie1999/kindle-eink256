.class public final Lcom/amazon/kindle/inapp/notifications/platform/ClassFactoryAlreadyInitializedException;
.super Ljava/lang/Exception;
.source "ClassFactoryAlreadyInitializedException.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
