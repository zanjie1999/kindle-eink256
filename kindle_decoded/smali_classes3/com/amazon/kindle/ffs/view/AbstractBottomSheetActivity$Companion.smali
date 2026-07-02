.class public final Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;
.super Ljava/lang/Object;
.source "AbstractBottomSheetActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addError(Landroid/content/Intent;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Landroid/content/Intent;
    .locals 1

    const-string v0, "$this$addError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    const-string p1, "PopupError"

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public final getError(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 4

    const-string v0, "$this$getError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PopupError"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Getting error from intent"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final isTimeoutError(Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Z
    .locals 2

    const-string v0, "$this$isTimeoutError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getDomain()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getResolution()I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
