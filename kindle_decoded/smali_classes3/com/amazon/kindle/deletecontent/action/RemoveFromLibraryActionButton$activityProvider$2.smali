.class final Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$activityProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoveFromLibraryActionButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V
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
        "Landroidx/fragment/app/FragmentActivity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$activityProvider$2;->this$0:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$activityProvider$2;->invoke()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$activityProvider$2;->this$0:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->access$getSdkProxy$p(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->getActivityProvider$DeleteContentModule_release()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
