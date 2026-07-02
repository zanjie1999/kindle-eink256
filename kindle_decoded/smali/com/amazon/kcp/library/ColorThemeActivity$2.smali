.class synthetic Lcom/amazon/kcp/library/ColorThemeActivity$2;
.super Ljava/lang/Object;
.source "ColorThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ColorThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$theme$AppTheme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/amazon/kindle/krx/theme/AppTheme;->values()[Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/ColorThemeActivity$2;->$SwitchMap$com$amazon$kindle$krx$theme$AppTheme:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/theme/AppTheme;->LIGHT:Lcom/amazon/kindle/krx/theme/AppTheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/ColorThemeActivity$2;->$SwitchMap$com$amazon$kindle$krx$theme$AppTheme:[I

    sget-object v1, Lcom/amazon/kindle/krx/theme/AppTheme;->DARK:Lcom/amazon/kindle/krx/theme/AppTheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/library/ColorThemeActivity$2;->$SwitchMap$com$amazon$kindle$krx$theme$AppTheme:[I

    sget-object v1, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
