.class synthetic Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;
.super Ljava/lang/Object;
.source "NonLinearFragmentStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->values()[Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$6;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
