.class final Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScopedStorageUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/ScopedStorageUtils;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
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
.field public static final INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;->INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;

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

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
