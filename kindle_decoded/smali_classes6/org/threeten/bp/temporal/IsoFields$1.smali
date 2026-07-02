.class synthetic Lorg/threeten/bp/temporal/IsoFields$1;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 604
    invoke-static {}, Lorg/threeten/bp/temporal/IsoFields$Unit;->values()[Lorg/threeten/bp/temporal/IsoFields$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$1;->$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I

    :try_start_0
    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$1;->$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Unit;->QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
