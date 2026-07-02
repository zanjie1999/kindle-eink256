.class synthetic Lcom/amazon/kcp/library/LibraryRefineMenuAdapter$1;
.super Ljava/lang/Object;
.source "LibraryRefineMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$LibraryFilterItem$FilterViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->values()[Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter$1;->$SwitchMap$com$amazon$kcp$library$LibraryFilterItem$FilterViewType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->TOGGLE:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter$1;->$SwitchMap$com$amazon$kcp$library$LibraryFilterItem$FilterViewType:[I

    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
