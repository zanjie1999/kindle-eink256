.class final Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteContentPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    const-string v1, "sdk.libraryUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$1;->invoke()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v0

    return-object v0
.end method
