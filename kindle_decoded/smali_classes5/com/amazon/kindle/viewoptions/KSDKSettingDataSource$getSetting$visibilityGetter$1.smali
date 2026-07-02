.class final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KSDKSettingDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $identifier:I

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    iput p2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;->$identifier:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getVisibilityHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;->$identifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
