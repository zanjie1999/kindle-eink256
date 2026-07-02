.class final Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelSecondaryText$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecapsPanelProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;-><init>(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelSecondaryText$2;->this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelSecondaryText$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelSecondaryText$2;->this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->access$getContext$p(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_recaps_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
