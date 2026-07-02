.class synthetic Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$3;
.super Ljava/lang/Object;
.source "WordWiseSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ui$WordWiseSettingsFragment$SettingsViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 179
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->values()[Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$3;->$SwitchMap$com$amazon$kcp$reader$ui$WordWiseSettingsFragment$SettingsViewType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$3;->$SwitchMap$com$amazon$kcp$reader$ui$WordWiseSettingsFragment$SettingsViewType:[I

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$3;->$SwitchMap$com$amazon$kcp$reader$ui$WordWiseSettingsFragment$SettingsViewType:[I

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
