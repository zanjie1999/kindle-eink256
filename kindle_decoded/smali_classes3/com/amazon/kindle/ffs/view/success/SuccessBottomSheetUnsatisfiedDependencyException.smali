.class final Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetUnsatisfiedDependencyException;
.super Ljava/lang/RuntimeException;
.source "SuccessBottomSheetActivity.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
