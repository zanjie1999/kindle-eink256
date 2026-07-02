.class public final enum Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;
.super Ljava/lang/Enum;
.source "BookOpenManagerStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

.field public static final enum BLOCKED:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

.field public static final enum IDLE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

.field public static final enum RUNNING:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    const/4 v2, 0x0

    const-string v3, "IDLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->IDLE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->RUNNING:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    const/4 v2, 0x2

    const-string v3, "BLOCKED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->BLOCKED:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->$VALUES:[Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->$VALUES:[Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    return-object v0
.end method
