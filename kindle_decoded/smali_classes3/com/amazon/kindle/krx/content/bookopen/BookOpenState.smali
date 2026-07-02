.class public final enum Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;
.super Ljava/lang/Enum;
.source "BookOpenState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

.field public static final enum DOWNLOAD:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

.field public static final enum ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

.field public static final enum READER_OPEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

.field public static final enum SPLASH_SCREEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    const/4 v2, 0x0

    const-string v3, "ENTRY_POINT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->DOWNLOAD:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    const/4 v2, 0x2

    const-string v3, "SPLASH_SCREEN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->SPLASH_SCREEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    const/4 v2, 0x3

    const-string v3, "READER_OPEN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->READER_OPEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->$VALUES:[Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->$VALUES:[Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-object v0
.end method
