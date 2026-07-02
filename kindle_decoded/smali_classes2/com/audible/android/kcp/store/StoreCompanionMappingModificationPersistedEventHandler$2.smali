.class synthetic Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$2;
.super Ljava/lang/Object;
.source "StoreCompanionMappingModificationPersistedEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$android$kcp$store$StoreType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/audible/android/kcp/store/StoreType;->values()[Lcom/audible/android/kcp/store/StoreType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$2;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    :try_start_0
    sget-object v1, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$2;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    sget-object v1, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
