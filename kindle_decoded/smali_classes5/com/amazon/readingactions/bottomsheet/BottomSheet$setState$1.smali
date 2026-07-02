.class final Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/bottomsheet/BottomSheet;->setState(I)V
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
.field final synthetic $state:I

.field final synthetic this$0:Lcom/amazon/readingactions/bottomsheet/BottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/bottomsheet/BottomSheet;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;->this$0:Lcom/amazon/readingactions/bottomsheet/BottomSheet;

    iput p2, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;->$state:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;->this$0:Lcom/amazon/readingactions/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->access$getActions$p(Lcom/amazon/readingactions/bottomsheet/BottomSheet;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;->$state:I

    invoke-interface {v0, v1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->setState(I)V

    :cond_0
    return-void
.end method
