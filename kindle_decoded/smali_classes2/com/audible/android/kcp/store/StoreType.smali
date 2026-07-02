.class public final enum Lcom/audible/android/kcp/store/StoreType;
.super Ljava/lang/Enum;
.source "StoreType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/store/StoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/store/StoreType;

.field public static final enum MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

.field public static final enum UPGRADER:Lcom/audible/android/kcp/store/StoreType;


# instance fields
.field private final titleStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/audible/android/kcp/store/StoreType;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchmaker_add_audible_narration:I

    const/4 v2, 0x0

    const-string v3, "MATCHMAKER"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/android/kcp/store/StoreType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    .line 15
    new-instance v0, Lcom/audible/android/kcp/store/StoreType;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->action_upgrade_audio:I

    const/4 v3, 0x1

    const-string v4, "UPGRADER"

    invoke-direct {v0, v4, v3, v1}, Lcom/audible/android/kcp/store/StoreType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/audible/android/kcp/store/StoreType;

    .line 13
    sget-object v4, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/audible/android/kcp/store/StoreType;->$VALUES:[Lcom/audible/android/kcp/store/StoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/audible/android/kcp/store/StoreType;->titleStringRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/store/StoreType;
    .locals 1

    .line 13
    const-class v0, Lcom/audible/android/kcp/store/StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/store/StoreType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/store/StoreType;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/android/kcp/store/StoreType;->$VALUES:[Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/store/StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/store/StoreType;

    return-object v0
.end method


# virtual methods
.method public getTitle()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/audible/android/kcp/store/StoreType;->titleStringRes:I

    return v0
.end method
