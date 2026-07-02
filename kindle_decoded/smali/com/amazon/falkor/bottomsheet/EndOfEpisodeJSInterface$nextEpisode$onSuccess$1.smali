.class final Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EndOfEpisodeController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->nextEpisode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $nextEpisodeAsin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;->$nextEpisodeAsin:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;->$nextEpisodeAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->onFreeEpisodeOwnershipSuccessful(Ljava/lang/String;)V

    return-void
.end method
