.class Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "DefinitionInfoCardPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;->access$100(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->closeDictionary()V

    return-void
.end method
