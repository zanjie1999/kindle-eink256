.class final Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getViewCreationListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LetterboxingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getViewCreationListener()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getViewCreationListener$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getViewCreationListener$1;->invoke(Ljava/util/ArrayList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checkboxItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getViewCreationListener$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$setCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
