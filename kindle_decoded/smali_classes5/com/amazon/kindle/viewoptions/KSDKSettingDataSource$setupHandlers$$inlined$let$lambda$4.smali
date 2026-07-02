.class final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$4;
.super Lkotlin/jvm/internal/Lambda;
.source "KSDKSettingDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->setupHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$4;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$4;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->access$getDisplayStateForIdentifier(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$4;->invoke(I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object p1

    return-object p1
.end method
