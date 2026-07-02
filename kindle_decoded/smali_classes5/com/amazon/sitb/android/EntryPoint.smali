.class public final enum Lcom/amazon/sitb/android/EntryPoint;
.super Ljava/lang/Enum;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/EntryPoint;

.field public static final enum BACKGROUND_TASK:Lcom/amazon/sitb/android/EntryPoint;

.field public static final enum ON_BOOK_CLOSED:Lcom/amazon/sitb/android/EntryPoint;

.field public static final enum ON_FULL_BOOK_DOWNLOADED:Lcom/amazon/sitb/android/EntryPoint;

.field public static final enum ON_READ_CLICK:Lcom/amazon/sitb/android/EntryPoint;

.field public static final enum UPDATE_DOWNLOAD_STATE:Lcom/amazon/sitb/android/EntryPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lcom/amazon/sitb/android/EntryPoint;

    const/4 v1, 0x0

    const-string v2, "ON_BOOK_CLOSED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/sitb/android/EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/EntryPoint;->ON_BOOK_CLOSED:Lcom/amazon/sitb/android/EntryPoint;

    .line 10
    new-instance v0, Lcom/amazon/sitb/android/EntryPoint;

    const/4 v2, 0x1

    const-string v3, "ON_READ_CLICK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/sitb/android/EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/EntryPoint;->ON_READ_CLICK:Lcom/amazon/sitb/android/EntryPoint;

    .line 11
    new-instance v0, Lcom/amazon/sitb/android/EntryPoint;

    const/4 v3, 0x2

    const-string v4, "UPDATE_DOWNLOAD_STATE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/sitb/android/EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/EntryPoint;->UPDATE_DOWNLOAD_STATE:Lcom/amazon/sitb/android/EntryPoint;

    .line 12
    new-instance v0, Lcom/amazon/sitb/android/EntryPoint;

    const/4 v4, 0x3

    const-string v5, "BACKGROUND_TASK"

    invoke-direct {v0, v5, v4}, Lcom/amazon/sitb/android/EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/EntryPoint;->BACKGROUND_TASK:Lcom/amazon/sitb/android/EntryPoint;

    .line 13
    new-instance v0, Lcom/amazon/sitb/android/EntryPoint;

    const/4 v5, 0x4

    const-string v6, "ON_FULL_BOOK_DOWNLOADED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/sitb/android/EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/EntryPoint;->ON_FULL_BOOK_DOWNLOADED:Lcom/amazon/sitb/android/EntryPoint;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/sitb/android/EntryPoint;

    .line 7
    sget-object v7, Lcom/amazon/sitb/android/EntryPoint;->ON_BOOK_CLOSED:Lcom/amazon/sitb/android/EntryPoint;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/sitb/android/EntryPoint;->ON_READ_CLICK:Lcom/amazon/sitb/android/EntryPoint;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/sitb/android/EntryPoint;->UPDATE_DOWNLOAD_STATE:Lcom/amazon/sitb/android/EntryPoint;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/sitb/android/EntryPoint;->BACKGROUND_TASK:Lcom/amazon/sitb/android/EntryPoint;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/sitb/android/EntryPoint;->$VALUES:[Lcom/amazon/sitb/android/EntryPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/EntryPoint;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/sitb/android/EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/EntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/EntryPoint;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/sitb/android/EntryPoint;->$VALUES:[Lcom/amazon/sitb/android/EntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/EntryPoint;

    return-object v0
.end method


# virtual methods
.method public getMetricValue()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
