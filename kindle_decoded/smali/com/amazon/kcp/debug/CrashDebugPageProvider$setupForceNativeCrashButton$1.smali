.class final Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;
.super Ljava/lang/Object;
.source "CrashDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/CrashDebugPageProvider;->setupForceNativeCrashButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;->INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v0, 0x2a

    .line 62
    :try_start_0
    const-class p1, Lcom/amazon/krf/platform/PageManager;

    const-string/jumbo v2, "nativeDisposePageManager"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string/jumbo v2, "method"

    .line 63
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-static {}, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception occurred when trying to force a native crash."

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
