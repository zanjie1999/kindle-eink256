.class public final Lcom/amazon/kindle/services/authentication/KindleAuthenticationManagerKt;
.super Ljava/lang/Object;
.source "KindleAuthenticationManager.kt"


# static fields
.field private static final LOGOUT_TIMER_KEY:Ljava/lang/String; = "LogoutTimer"

.field private static final TAG:Ljava/lang/String;

.field private static final WORKER_NUMS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManagerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
