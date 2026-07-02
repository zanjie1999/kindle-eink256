.class final Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getSettings$stateHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WordWiseAaSettingProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $wordWiseModel:Lcom/amazon/kcp/reader/ui/WordWiseModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getSettings$stateHandler$1;->$wordWiseModel:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getSettings$stateHandler$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getSettings$stateHandler$1;->$wordWiseModel:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
