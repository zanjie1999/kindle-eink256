.class final Lcom/amazon/kcp/library/AudibleFilterHelper$1;
.super Ljava/lang/Object;
.source "AudibleFilterHelper.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AudibleFilterHelper;->createOwnsCompanionBookPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 1

    .line 45
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
