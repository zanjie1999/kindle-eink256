.class public final Lcom/audible/license/VoucherManagerFactory$NetworkUtilBackedConnectivityAwareness;
.super Ljava/lang/Object;
.source "VoucherManagerFactory.kt"

# interfaces
.implements Lcom/audible/mobile/util/ConnectivityAwareness;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/license/VoucherManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkUtilBackedConnectivityAwareness"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/audible/license/VoucherManagerFactory;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/audible/license/VoucherManagerFactory$NetworkUtilBackedConnectivityAwareness;->context:Landroid/content/Context;

    return-void
.end method
