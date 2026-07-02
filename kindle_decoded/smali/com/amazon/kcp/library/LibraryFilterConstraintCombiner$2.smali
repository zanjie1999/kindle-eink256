.class synthetic Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$2;
.super Ljava/lang/Object;
.source "LibraryFilterConstraintCombiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$LibraryFilterConstraintCombiner$CombinationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    invoke-static {}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->values()[Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$2;->$SwitchMap$com$amazon$kcp$library$LibraryFilterConstraintCombiner$CombinationType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$2;->$SwitchMap$com$amazon$kcp$library$LibraryFilterConstraintCombiner$CombinationType:[I

    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
