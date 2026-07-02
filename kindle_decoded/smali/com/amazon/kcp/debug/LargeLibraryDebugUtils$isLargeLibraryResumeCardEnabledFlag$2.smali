.class final Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryDebugUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 14
    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->access$isLargeLibraryEnabledFlag$p(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->access$isLargeLibraryResumeCardFOSWeblabEnabled(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 17
    :cond_2
    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->access$isLargeLibraryResumeCardWeblabEnabled(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method
