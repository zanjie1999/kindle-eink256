.class synthetic Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton$1;
.super Ljava/lang/Object;
.source "KRXCustomSelectionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ComponentStatus;->values()[Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->DISABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    sget-object v1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
