.class synthetic Lcom/amazon/kindle/seekbar/LayeredSeekBar$2;
.super Ljava/lang/Object;
.source "LayeredSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/seekbar/LayeredSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 474
    invoke-static {}, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->values()[Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$2;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$2;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
