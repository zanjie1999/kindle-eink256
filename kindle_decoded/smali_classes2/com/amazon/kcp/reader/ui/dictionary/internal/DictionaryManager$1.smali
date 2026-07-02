.class Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager$1;
.super Ljava/lang/Object;
.source "DictionaryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->downloadFallbackDictionary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$locator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
    .locals 0

    .line 217
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager$1;->val$locator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager$1;->val$locator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    return-void
.end method
