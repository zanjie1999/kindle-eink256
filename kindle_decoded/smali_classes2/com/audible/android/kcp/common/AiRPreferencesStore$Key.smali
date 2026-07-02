.class public final enum Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;
.super Ljava/lang/Enum;
.source "AiRPreferencesStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/common/AiRPreferencesStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

.field public static final enum FAILED_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

.field public static final enum MATCH_MAKER_UPGRADABLE_BOOK_SEEN:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

.field public static final enum NEW_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

.field public static final enum PLAYER_NARRATION_SPEED:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const/4 v1, 0x0

    const-string v2, "MATCH_MAKER_UPGRADABLE_BOOK_SEEN"

    invoke-direct {v0, v2, v1}, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->MATCH_MAKER_UPGRADABLE_BOOK_SEEN:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    .line 25
    new-instance v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const/4 v2, 0x1

    const-string v3, "NEW_AUDIOBOOKS"

    invoke-direct {v0, v3, v2}, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->NEW_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    .line 26
    new-instance v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const/4 v3, 0x2

    const-string v4, "PLAYER_NARRATION_SPEED"

    invoke-direct {v0, v4, v3}, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->PLAYER_NARRATION_SPEED:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    .line 27
    new-instance v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const/4 v4, 0x3

    const-string v5, "FAILED_AUDIOBOOKS"

    invoke-direct {v0, v5, v4}, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->FAILED_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    .line 23
    sget-object v6, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->MATCH_MAKER_UPGRADABLE_BOOK_SEEN:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->NEW_AUDIOBOOKS:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->PLAYER_NARRATION_SPEED:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->$VALUES:[Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;
    .locals 1

    .line 23
    const-class v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->$VALUES:[Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    return-object v0
.end method
