.class synthetic Lcom/amazon/kcp/cover/badge/BadgeBinder$1;
.super Ljava/lang/Object;
.source "BadgeBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/badge/BadgeBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$cover$badge$Badge$ViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->values()[Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/cover/badge/BadgeBinder$1;->$SwitchMap$com$amazon$kcp$cover$badge$Badge$ViewType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->IMAGE:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeBinder$1;->$SwitchMap$com$amazon$kcp$cover$badge$Badge$ViewType:[I

    sget-object v1, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->TEXT:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
