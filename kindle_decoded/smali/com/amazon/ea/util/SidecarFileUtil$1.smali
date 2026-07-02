.class synthetic Lcom/amazon/ea/util/SidecarFileUtil$1;
.super Ljava/lang/Object;
.source "SidecarFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/util/SidecarFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$ea$util$SidecarFileUtil$SidecarFileType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->values()[Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/ea/util/SidecarFileUtil$1;->$SwitchMap$com$amazon$ea$util$SidecarFileUtil$SidecarFileType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->END_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$1;->$SwitchMap$com$amazon$ea$util$SidecarFileUtil$SidecarFileType:[I

    sget-object v1, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
