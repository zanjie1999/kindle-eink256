.class synthetic Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;
.super Ljava/lang/Object;
.source "BookAnnotationsJournalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$models$BookType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$sync$LPRSyncType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 238
    invoke-static {}, Lcom/amazon/kindle/krx/sync/LPRSyncType;->values()[Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kindle$krx$sync$LPRSyncType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kindle$krx$sync$LPRSyncType:[I

    sget-object v3, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :catch_1
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
