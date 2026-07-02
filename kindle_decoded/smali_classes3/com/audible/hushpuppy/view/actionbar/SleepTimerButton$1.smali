.class synthetic Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton$1;
.super Ljava/lang/Object;
.source "SleepTimerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->values()[Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
