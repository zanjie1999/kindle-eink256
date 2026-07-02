.class final enum Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;
.super Ljava/lang/Enum;
.source "AudibleStoreUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudibleStoreAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

.field public static final enum CONTINUE_READING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

.field public static final enum PLAY_SAMPLE:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

.field public static final enum START_LISTENING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;


# instance fields
.field private final mParamValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 146
    new-instance v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    const/4 v1, 0x0

    const-string v2, "PLAY_SAMPLE"

    const-string v3, "storesample"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->PLAY_SAMPLE:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    new-instance v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    const/4 v2, 0x1

    const-string v3, "START_LISTENING"

    const-string v4, "startlistening"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->START_LISTENING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    new-instance v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    const/4 v3, 0x2

    const-string v4, "CONTINUE_READING"

    const-string v5, "continuereading"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->CONTINUE_READING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    .line 145
    sget-object v5, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->PLAY_SAMPLE:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->START_LISTENING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->$VALUES:[Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->mParamValue:Ljava/lang/String;

    return-void
.end method

.method public static fromParamValue(Ljava/lang/String;)Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;
    .locals 5

    .line 157
    invoke-static {}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->values()[Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 158
    invoke-virtual {v3}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->getParamValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;
    .locals 1

    .line 145
    const-class v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;
    .locals 1

    .line 145
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->$VALUES:[Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    return-object v0
.end method


# virtual methods
.method public getParamValue()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->mParamValue:Ljava/lang/String;

    return-object v0
.end method
