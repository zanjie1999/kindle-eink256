.class final Lcom/amazon/readingactions/bottomsheet/BottomSheet$disableDimBackgroundWithAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/bottomsheet/BottomSheet;->disableDimBackgroundWithAnimation()V
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
.field final synthetic this$0:Lcom/amazon/readingactions/bottomsheet/BottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/bottomsheet/BottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$disableDimBackgroundWithAnimation$1;->this$0:Lcom/amazon/readingactions/bottomsheet/BottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$disableDimBackgroundWithAnimation$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$disableDimBackgroundWithAnimation$1;->this$0:Lcom/amazon/readingactions/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->access$getActions$p(Lcom/amazon/readingactions/bottomsheet/BottomSheet;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->disableDimBackgroundWithAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReadingActionsBottomSheet"

    const-string v2, "BottomSheet fragment could not disable dim background"

    .line 93
    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
