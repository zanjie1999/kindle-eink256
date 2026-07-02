.class Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;
.super Ljava/lang/Object;
.source "DebugUpsellPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field m_decoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->m_decoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->m_decoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;

    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;-><init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->m_decoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->m_decoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x96

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
