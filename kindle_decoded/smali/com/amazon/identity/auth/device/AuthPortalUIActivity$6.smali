.class synthetic Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic eE:[I

.field static final synthetic eF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1324
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 1074
    :catch_8
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    :try_start_9
    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->PROGRESS_BAR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->OFF:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_SMALL:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_MEDIUM:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_LARGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
