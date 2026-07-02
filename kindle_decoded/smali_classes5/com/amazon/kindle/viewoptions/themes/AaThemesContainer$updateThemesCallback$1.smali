.class final Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaThemesContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
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
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
