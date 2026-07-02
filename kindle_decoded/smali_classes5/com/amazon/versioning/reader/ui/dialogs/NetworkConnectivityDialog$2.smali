.class synthetic Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog$2;
.super Ljava/lang/Object;
.source "NetworkConnectivityDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$theme$Theme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/amazon/kindle/krx/theme/Theme;->values()[Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog$2;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
