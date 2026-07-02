.class synthetic Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;
.super Ljava/lang/Object;
.source "AudibleStoreUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$android$kcp$store$StoreType:[I

.field static final synthetic $SwitchMap$com$audible$android$kcp$store$utils$AudibleStoreUriHandler$AudibleStoreAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 78
    invoke-static {}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->values()[Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$utils$AudibleStoreUriHandler$AudibleStoreAction:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->PLAY_SAMPLE:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$utils$AudibleStoreUriHandler$AudibleStoreAction:[I

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->START_LISTENING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$utils$AudibleStoreUriHandler$AudibleStoreAction:[I

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->CONTINUE_READING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    :catch_2
    invoke-static {}, Lcom/audible/android/kcp/store/StoreType;->values()[Lcom/audible/android/kcp/store/StoreType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    :try_start_3
    sget-object v3, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    sget-object v2, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
