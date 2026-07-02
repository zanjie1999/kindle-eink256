.class final enum Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;
.super Ljava/lang/Enum;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/internal/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MemoryWarningLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kBackgroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kBackgroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kBackgroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kForegroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kForegroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kForegroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

.field public static final enum kForegroundToBackground:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v1, 0x0

    const-string v2, "kForegroundLow"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 17
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v2, 0x1

    const-string v3, "kForegroundModerate"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 18
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v3, 0x2

    const-string v4, "kForegroundCritical"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 19
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v4, 0x3

    const-string v5, "kForegroundToBackground"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundToBackground:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 20
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v5, 0x4

    const-string v6, "kBackgroundLow"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 21
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v6, 0x5

    const-string v7, "kBackgroundModerate"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 22
    new-instance v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v7, 0x6

    const-string v8, "kBackgroundCritical"

    invoke-direct {v0, v8, v7}, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    .line 15
    sget-object v9, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundToBackground:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->$VALUES:[Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->$VALUES:[Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    invoke-virtual {v0}, [Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    return-object v0
.end method
