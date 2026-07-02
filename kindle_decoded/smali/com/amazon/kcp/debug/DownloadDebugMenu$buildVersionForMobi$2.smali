.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;->INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;

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

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1145307300"

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1189242110"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method
