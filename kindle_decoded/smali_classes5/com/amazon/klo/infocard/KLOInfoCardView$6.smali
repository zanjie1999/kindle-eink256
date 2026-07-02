.class synthetic Lcom/amazon/klo/infocard/KLOInfoCardView$6;
.super Ljava/lang/Object;
.source "KLOInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/infocard/KLOInfoCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 154
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ColorMode;->values()[Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/klo/infocard/KLOInfoCardView$6;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
