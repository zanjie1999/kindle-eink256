.class synthetic Lcom/amazon/kcp/library/models/internal/KRFBookItem$1;
.super Ljava/lang/Object;
.source "KRFBookItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/KRFBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$krfhacks$KRFHacks$BookType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 493
    invoke-static {}, Lcom/amazon/krfhacks/KRFHacks$BookType;->values()[Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem$1;->$SwitchMap$com$amazon$krfhacks$KRFHacks$BookType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem$1;->$SwitchMap$com$amazon$krfhacks$KRFHacks$BookType:[I

    sget-object v1, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem$1;->$SwitchMap$com$amazon$krfhacks$KRFHacks$BookType:[I

    sget-object v1, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi:Lcom/amazon/krfhacks/KRFHacks$BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
