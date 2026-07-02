.class final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;
.super Lkotlin/jvm/internal/Lambda;
.source "KSDKSettingDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getSetting(I)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[I",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $identifier$inlined:I

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    iput p2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;->$identifier$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [I

    check-cast p2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;->invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V
    .locals 2

    const-string v0, "checkedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toggledCheckbox"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getCheckboxGroupChangeHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;->$identifier$inlined:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
