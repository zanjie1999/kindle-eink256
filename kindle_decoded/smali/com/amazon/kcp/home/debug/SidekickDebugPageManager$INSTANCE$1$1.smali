.class final Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;
.super Ljava/lang/Object;
.source "SidekickDebugPageProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1;->invoke(Landroid/content/Context;)Lcom/amazon/kindle/krx/providers/IProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 2

    .line 29
    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickDebugPage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager$INSTANCE$1$1;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method
