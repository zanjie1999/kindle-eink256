.class final synthetic Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SwitchingWebRequestExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/system/net/SwitchingWebRequestExecutor;-><init>(Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;

    invoke-direct {v0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;-><init>()V

    sput-object v0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;->INSTANCE:Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/amazon/kcp/debug/DownloadDebugUtils;

    const/4 v1, 0x0

    const-string v3, "isOkHttpWebRequestExecutorEnabled"

    const-string v4, "isOkHttpWebRequestExecutorEnabled()Z"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorEnabled()Z

    move-result v0

    return v0
.end method
