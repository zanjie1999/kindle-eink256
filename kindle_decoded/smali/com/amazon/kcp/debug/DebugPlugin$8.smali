.class Lcom/amazon/kcp/debug/DebugPlugin$8;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin;->registerReaderSearchDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 2

    .line 155
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;-><init>(Landroid/content/Context;Lcom/amazon/kcp/debug/DebugPlugin$1;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$8;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method
