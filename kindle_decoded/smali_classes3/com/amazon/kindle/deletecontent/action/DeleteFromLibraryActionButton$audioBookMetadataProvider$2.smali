.class final Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$audioBookMetadataProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteFromLibraryActionButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$audioBookMetadataProvider$2;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$audioBookMetadataProvider$2;->invoke()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$audioBookMetadataProvider$2;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$getSdkProxy$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->getAudioBookMetadataProvider$DeleteContentModule_release()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
